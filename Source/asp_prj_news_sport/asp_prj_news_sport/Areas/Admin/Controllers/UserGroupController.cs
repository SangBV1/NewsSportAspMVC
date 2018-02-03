using Model.Dao;
using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using asp_prj_news_sport.Common;
using Model.ViewModel;

namespace asp_prj_news_sport.Areas.Admin.Controllers
{
    public class UserGroupController : BaseController
    {
        [HasCredential(RoleID = CommonPublic.CommonConstants.VIEW_USER_GROUP)]
        public ActionResult Index(int page = 1, int page_size = 10)
        {
            var dao = new user_group_dao();
            var model = dao.ListAllPaging(page, page_size);
            ViewData["UserGroup"] = new SelectList(dao.ListAll(), "id", "name");
            return View(model);
        }

        [HttpGet]
        [HasCredential(RoleID = CommonPublic.CommonConstants.ADD_USER_GROUP)]
        public ActionResult Create()
        {
            return View();
        }

        [HttpGet]
        [HasCredential(RoleID = CommonPublic.CommonConstants.EDIT_USER_GROUP)]
        public ActionResult Edit(string id)
        {
            var model = new user_group_dao().Get_By_Id(id);
            return View(model);
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.ADD_USER_GROUP)]
        public ActionResult Create(user_group group)
        {
            if (ModelState.IsValid)
            {
                var dao = new user_group_dao();

                bool result = dao.Insert(group);
                if (result)
                {
                    SetAlert(StaticResources.Resources.Pub_InsertSuccess, "success");
                    return RedirectToAction("Index", "UserGroup");
                }
                else
                {
                    ModelState.AddModelError("", StaticResources.Resources.InsertUserGroupFailed);
                }
            }
            return View();
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.EDIT_USER_GROUP)]
        public ActionResult Edit(user_group group)
        {
            if (ModelState.IsValid)
            {
                var dao = new user_group_dao();
                var result = dao.Update(group);

                if (result)
                {
                    SetAlert(StaticResources.Resources.Pub_UpdateSucess, "success");
                    return RedirectToAction("Index", "UserGroup");
                }
                else
                {
                    ModelState.AddModelError("", StaticResources.Resources.UpdateUserGroupFailed);
                }
            }
            return View();
        }

        // Xóa 1 hoặc nhiều dòng được check
        // ids được truyền Ajax là chuỗi chứa 1 hoặc nhiều id ngăn cách bởi dấu ,
        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.DELETE_USER_GROUP)]
        public ActionResult DeleteAllChecked(string ids)
        {
            if (ids != "" && ids != null)
            {
                string[] array_id = ids.Split(',');
                var dao = new user_group_dao();
                foreach (var id in array_id)
                {
                    dao.Delete(id);
                }
            }
            return RedirectToAction("Index");
        }

        // Chuyen doi ID của UserGroup sang UserGroup khác
        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.DELETE_USER_GROUP)]
        public JsonResult ConvertToOtherGroup(string id,string replace_id)
        {
            bool result = false;
            if (!string.IsNullOrEmpty(replace_id))
            {
                var dao = new user_group_dao();
                result = dao.ConverToOtherGroup(id, replace_id);
            }
            return Json(new
            {
                status = result
            });
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.EDIT_AD)]
        public JsonResult ChangeActive(string id)
        {
            var result = new user_group_dao().ChangeActive(id);
            return Json(new
            {
                status = result
            });
        }
    }
}