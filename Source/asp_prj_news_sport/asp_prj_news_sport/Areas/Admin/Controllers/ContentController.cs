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
    public class ContentController : BaseController
    {
        [HasCredential(RoleID = CommonPublic.CommonConstants.VIEW_CONTENT)]
        public ActionResult Index(int page = 1, int page_size = 10)
        {
            var dao = new content_dao();
            var model = dao.ListAllPaging(page, page_size);
            return View(model);
        }

        [HttpGet]
        [HasCredential(RoleID = CommonPublic.CommonConstants.ADD_CONTENT)]
        public ActionResult Create()
        {
            SetListCategory();
            return View();
        }

        [HttpGet]
        [HasCredential(RoleID = CommonPublic.CommonConstants.EDIT_CONTENT)]
        public ActionResult Edit(long id)
        {
            var model = new content_dao().Get_By_Id(id);
            SetListCategory(model.content_category_id);
            return View(model);
        }

        [HttpPost]
        [ValidateInput(false)]
        [HasCredential(RoleID = CommonPublic.CommonConstants.ADD_CONTENT)]
        public ActionResult Create(content content)
        {
            if (ModelState.IsValid)
            {
                var dao = new content_dao();
                var session = (UserLogin)Session[CommonConstants.USER_SESSION];
                content.created_by = session.username;

                bool result = dao.Insert_Content(content);
                if (result)
                {
                    SetAlert(StaticResources.Resources.Pub_InsertSuccess, "success");
                    return RedirectToAction("Index", "Content");
                }
                else
                {
                    ModelState.AddModelError("", StaticResources.Resources.InsertContentFailed);
                }
            }
            SetListCategory(content.content_category_id);
            return View();
        }

        [HttpPost]
        [ValidateInput(false)]
        [HasCredential(RoleID = CommonPublic.CommonConstants.EDIT_CONTENT)]
        public ActionResult Edit(content content,int page)
        {
            if (ModelState.IsValid)
            {
                var dao = new content_dao();
                var session = (UserLogin)Session[CommonConstants.USER_SESSION];
                content.modified_by = session.username;

                var result = dao.Update_Content(content);
                if (result)
                {
                    SetAlert(StaticResources.Resources.Pub_UpdateSucess, "success");
                    return RedirectToAction("Index", "Content",new { page = page});
                }
                else
                {
                    ModelState.AddModelError("", StaticResources.Resources.UpdateContentFailed);
                }
            }
            SetListCategory(content.content_category_id);
            return View();
        }

        // Xóa 1 hoặc nhiều dòng được check
        // ids được truyền Ajax là chuỗi chứa 1 hoặc nhiều id ngăn cách bởi dấu ,
        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.DELETE_CONTENT)]
        public ActionResult DeleteAllChecked(string ids)
        {
            if (ids != "" && ids != null)
            {
                string[] array_id = ids.Split(',');
                var dao = new content_dao();
                foreach (var id in array_id)
                {
                    dao.Delete_Content(long.Parse(id));
                }
            }
            return RedirectToAction("Index");
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.EDIT_CONTENT)]
        public JsonResult ChangeActive(long id)
        {
            var result = new content_dao().ChangeActive(id);
            return Json(new
            {
                status = result
            });
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.EDIT_CONTENT)]
        public JsonResult ChangeTopHot(long id)
        {
            var result = new content_dao().ChangeTopHot(id);
            return Json(new
            {
                status = result
            });
        }

        public void SetListCategory(int? selected_id = null)
        {
            var dao = new content_category_dao();
            ViewData["ContentCate"] = new SelectList(dao.ListAll(), "id", "name", selected_id);
        }
    }
}