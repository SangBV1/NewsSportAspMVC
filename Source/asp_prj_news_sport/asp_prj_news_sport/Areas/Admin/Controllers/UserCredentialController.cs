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
    public class UserCredentialController : BaseController
    {
        [HasCredential(RoleID = CommonPublic.CommonConstants.VIEW_USER_CREDENTIAL)]
        public ActionResult Index(int page = 1, int page_size = 10,string user_group = null)
        {
            var dao = new user_credential_dao();
            var model = dao.ListCredential_ByUserGroup(ref user_group,page, page_size);

            ViewBag.CurrentUserGroup = user_group;
            SetListUserGroup(user_group);
            SetListUserRole();
            return View(model);
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.ADD_USER_CREDENTIAL)]
        public JsonResult Create(string user_group,string user_role)
        {
            var dao = new user_credential_dao();
            var model_userCredential = new user_credential();
            long newUserCredentialID = 0;

            model_userCredential.idx_user_group_id  = user_group;
            model_userCredential.idx_user_role_id   = user_role;

            int result = dao.Insert(ref newUserCredentialID,model_userCredential);

            if (result == 1)
            {
                //get new info - user credential
                var newModelUserCredential = dao.ViewDetailByID(newUserCredentialID);
                var resultPara = new {
                    status = result,
                    id = newModelUserCredential.id,
                    user_group_name = newModelUserCredential.user_group_name,
                    user_role_name = newModelUserCredential.user_role_name
                };
                return Json(resultPara, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(new
                {
                    status = result
                });
            }
        }

        // Xóa 1 hoặc nhiều dòng được check
        // ids được truyền Ajax là chuỗi chứa 1 hoặc nhiều id ngăn cách bởi dấu ,
        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.DELETE_USER_CREDENTIAL)]
        public ActionResult DeleteAllChecked(string ids)
        {
            if (ids != "" && ids != null)
            {
                string[] array_id = ids.Split(',');
                var dao = new user_credential_dao();
                foreach (var id in array_id)
                {
                    dao.Delete(long.Parse(id));
                }
            }
            return RedirectToAction("Index");
        }

        public void SetListUserGroup(string selected_id = null)
        {
            var dao = new user_group_dao();
            ViewData["UserGroup"] = new SelectList(dao.ListAll(), "id", "name", selected_id);
        }

        public void SetListUserRole(string selected_id = null)
        {
            var dao = new user_role_dao();
            ViewData["UserRole"] = new SelectList(dao.ListAll(), "id", "name", selected_id);
        }
    }
}