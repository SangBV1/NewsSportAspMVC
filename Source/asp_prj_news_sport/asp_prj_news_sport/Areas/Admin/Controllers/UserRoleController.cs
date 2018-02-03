using Model.Dao;
using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using asp_prj_news_sport.Common;

namespace asp_prj_news_sport.Areas.Admin.Controllers
{
    public class UserRoleController : BaseController
    {
        [HasCredential(RoleID = CommonPublic.CommonConstants.VIEW_USER_ROLE)]
        public ActionResult Index(int page = 1, int page_size = 10)
        {
            var dao = new user_role_dao();
            var model = dao.ListAllPaging(page, page_size);
            return View(model);
        }

        [HttpGet]
        [HasCredential(RoleID = CommonPublic.CommonConstants.ADD_USER_ROLE)]
        public ActionResult Create()
        {
            return View();
        }

        [HttpGet]
        [HasCredential(RoleID = CommonPublic.CommonConstants.EDIT_USER_ROLE)]
        public ActionResult Edit(string id)
        {
            var model = new user_role_dao().Get_By_Id(id);
            return View(model);
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.ADD_USER_ROLE)]
        public ActionResult Create(user_role role)
        {
            if (ModelState.IsValid)
            {
                var dao = new user_role_dao();

                bool result = dao.Insert(role);
                if (result)
                {
                    SetAlert(StaticResources.Resources.Pub_InsertSuccess, "success");
                    return RedirectToAction("Create", "UserRole");
                }
                else
                {
                    ModelState.AddModelError("", StaticResources.Resources.InsertUserRoleFailed);
                }
            }
            return View();
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.EDIT_USER_ROLE)]
        public ActionResult Edit(user_role group)
        {
            if (ModelState.IsValid)
            {
                var dao = new user_role_dao();

                var result = dao.Update(group);
                if (result)
                {
                    SetAlert(StaticResources.Resources.Pub_UpdateSucess, "success");
                    return RedirectToAction("Index", "UserRole");
                }
                else
                {
                    ModelState.AddModelError("", StaticResources.Resources.UpdateUserRoleFailed);
                }
            }
            return View();
        }

        // Xóa 1 hoặc nhiều dòng được check
        // ids được truyền Ajax là chuỗi chứa 1 hoặc nhiều id ngăn cách bởi dấu ,
        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.DELETE_USER_ROLE)]
        public ActionResult DeleteAllChecked(string ids)
        {
            if(ids != "" && ids != null)
            {
                string[] array_id = ids.Split(',');
                var dao = new user_role_dao();
                foreach (var id in array_id)
                {
                    dao.Delete(id);
                }
            }
            return RedirectToAction("Index");
        }
    }
}