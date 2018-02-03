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
    public class UserLogController : BaseController
    {
        [HasCredential(RoleID = CommonPublic.CommonConstants.VIEW_USER_LOG)]
        public ActionResult Index(int page = 1, int page_size = 10)
        {
            var dao = new user_log_dao();
            var model = dao.ListAllPaging(page, page_size);
            return View(model);
        }

        [HttpGet]
        [HasCredential(RoleID = CommonPublic.CommonConstants.ADD_USER_LOG)]
        public ActionResult Create()
        {
            SetListUserGroup();
            return View();
        }

        [HttpGet]
        [HasCredential(RoleID = CommonPublic.CommonConstants.EDIT_USER_LOG)]
        public ActionResult Edit(long id)
        {
            var model = new user_log_dao().Get_By_Id(id);
            if (model != null)
            {
                SetListUserGroup(model.user_group_id);
            }
            else
            {
                SetListUserGroup();
            }
            return View(model);
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.ADD_USER_LOG)]
        public ActionResult Create(user_log user,string comfirm_password)
        {
            if (ModelState.IsValid)
            {
                var dao = new user_log_dao();
                var session = (UserLogin)Session[CommonConstants.USER_SESSION];
                user.created_by = session.username;

                var result = dao.Insert(user,comfirm_password);
                if (result == 1)
                {
                    SetAlert(StaticResources.Resources.Pub_InsertSuccess, "success");
                    return RedirectToAction("Index", "UserLog");
                }
                else if (result == -1)
                {
                    ModelState.AddModelError("", StaticResources.Resources.UsernameExists);
                }
                else if (result == -2)
                {
                    ModelState.AddModelError("", StaticResources.Resources.ComfirmPasswordIncorrect);
                }
                else if (result == -3)
                {
                    ModelState.AddModelError("", StaticResources.Resources.EmailExists);
                }
                else if (result == 0)
                {
                    ModelState.AddModelError("", StaticResources.Resources.InsertUserLogFailed);
                }
            }
            SetListUserGroup(user.user_group_id);
            return View();
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.EDIT_USER_LOG)]
        public ActionResult Edit(user_log user, string comfirm_password)
        {
            if (ModelState.IsValid)
            {
                var dao = new user_log_dao();
                var session = (UserLogin)Session[CommonConstants.USER_SESSION];
                user.modified_by = session.username;

                var result = dao.Update(user, comfirm_password);
                if (result == 1)
                {
                    SetAlert(StaticResources.Resources.Pub_UpdateSucess, "success");
                    return RedirectToAction("Index", "UserLog");
                }
                else if (result == -1)
                {
                    ModelState.AddModelError("", StaticResources.Resources.ComfirmPasswordIncorrect);
                }
                else if (result == -2)
                {
                    ModelState.AddModelError("", StaticResources.Resources.EmailExists);
                }
                else
                {
                    ModelState.AddModelError("", StaticResources.Resources.UpdateUserLogFailed);
                }
            }
            SetListUserGroup(user.user_group_id);
            return View();
        }

        // Xóa 1 hoặc nhiều dòng được check
        // ids được truyền Ajax là chuỗi chứa 1 hoặc nhiều id ngăn cách bởi dấu ,
        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.DELETE_USER_LOG)]
        public ActionResult DeleteAllChecked(string ids)
        {
            if (ids != "" && ids != null)
            {
                string[] array_id = ids.Split(',');
                var dao = new user_log_dao();
                foreach (var id in array_id)
                {
                    dao.Delete(long.Parse(id));
                }
            }
            return RedirectToAction("Index");
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.EDIT_AD)]
        public JsonResult ChangeActive(long id)
        {
            var result = new user_log_dao().ChangeActive(id);
            return Json(new
            {
                status = result
            });
        }

        public void SetListUserGroup(string selected_id = null)
        {
            var dao = new user_group_dao();
            ViewData["UserGroup"] = new SelectList(dao.ListAll(), "id", "name", selected_id);
        }
    }
}