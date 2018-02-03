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
    public class InfoController : BaseController
    {
        [HasCredential(RoleID = CommonPublic.CommonConstants.VIEW_INFO)]
        public ActionResult Index(int page = 1, int page_size = 10)
        {
            var dao = new info_dao();
            var model = dao.ListAllPaging(page, page_size);
            return View(model);
        }

        [HttpGet]
        [HasCredential(RoleID = CommonPublic.CommonConstants.ADD_INFO)]
        public ActionResult Create()
        {
            return View();
        }

        [HttpGet]
        [HasCredential(RoleID = CommonPublic.CommonConstants.EDIT_INFO)]
        public ActionResult Edit(string id)
        {
            var model = new info_dao().Get_By_Id(id);
            return View(model);
        }

        [HttpPost]
        [ValidateInput(false)]
        [HasCredential(RoleID = CommonPublic.CommonConstants.ADD_INFO)]
        public ActionResult Create(info info)
        {
            if (ModelState.IsValid)
            {
                var dao = new info_dao();
                var session = (UserLogin)Session[CommonConstants.USER_SESSION];
                info.created_by = session.username;

                bool result = dao.Insert(info);
                if (result)
                {
                    SetAlert(StaticResources.Resources.Pub_InsertSuccess, "success");
                    return RedirectToAction("Index", "Info");
                }
                else
                {
                    ModelState.AddModelError("", StaticResources.Resources.InsertInfoFailed);
                }
            }
            return View();
        }

        [HttpPost]
        [ValidateInput(false)]
        [HasCredential(RoleID = CommonPublic.CommonConstants.EDIT_INFO)]
        public ActionResult Edit(info info)
        {
            if (ModelState.IsValid)
            {
                var dao = new info_dao();
                var session = (UserLogin)Session[CommonConstants.USER_SESSION];
                info.modified_by = session.username;

                var result = dao.Update(info);
                if (result)
                {
                    SetAlert(StaticResources.Resources.Pub_UpdateSucess, "success");
                    return RedirectToAction("Index", "Info");
                }
                else
                {
                    ModelState.AddModelError("", StaticResources.Resources.UpdateInfoFailed);
                }
            }
            return View();
        }

        // Xóa 1 hoặc nhiều dòng được check
        // ids được truyền Ajax là chuỗi chứa 1 hoặc nhiều id ngăn cách bởi dấu ,
        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.DELETE_INFO)]
        public ActionResult DeleteAllChecked(string ids)
        {
            if (ids != "" && ids != null)
            {
                string[] array_id = ids.Split(',');
                var dao = new info_dao();
                foreach (var id in array_id)
                {
                    dao.Delete(id);
                }
            }
            return RedirectToAction("Index");
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.EDIT_AD)]
        public JsonResult ChangeActive(string id)
        {
            var result = new info_dao().ChangeActive(id);
            return Json(new
            {
                status = result
            });
        }
    }
}