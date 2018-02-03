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
    public class ContentCateController : BaseController
    {
        [HasCredential(RoleID = CommonPublic.CommonConstants.VIEW_CONTENT_CATE)]
        public ActionResult Index(int page = 1, int page_size = 10)
        {
            var dao = new content_category_dao();
            var model = dao.ListAllPaging(page, page_size);
            return View(model);
        }

        [HttpGet]
        [HasCredential(RoleID = CommonPublic.CommonConstants.ADD_CONTENT_CATE)]
        public ActionResult Create()
        {
            return View();
        }

        [HttpGet]
        [HasCredential(RoleID = CommonPublic.CommonConstants.EDIT_CONTENT_CATE)]
        public ActionResult Edit(int id)
        {
            var model = new content_category_dao().Get_By_Id(id);
            return View(model);
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.ADD_CONTENT_CATE)]
        public ActionResult Create(content_category cate)
        {
            if (ModelState.IsValid)
            {
                var dao = new content_category_dao();
                var session = (UserLogin)Session[CommonConstants.USER_SESSION];
                cate.created_by = session.username;

                bool result = dao.Insert(cate);
                if (result)
                {
                    SetAlert(StaticResources.Resources.Pub_InsertSuccess, "success");
                    return RedirectToAction("Index", "ContentCate");
                }
                else
                {
                    ModelState.AddModelError("", StaticResources.Resources.InsertContentCategoryFailed);
                }
            }
            return View();
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.EDIT_CONTENT_CATE)]
        public ActionResult Edit(content_category cate)
        {
            if (ModelState.IsValid)
            {
                var dao = new content_category_dao();
                var session = (UserLogin)Session[CommonConstants.USER_SESSION];
                cate.modified_by = session.username;

                var result = dao.Update(cate);
                if (result)
                {
                    SetAlert(StaticResources.Resources.Pub_UpdateSucess, "success");
                    return RedirectToAction("Index", "ContentCate");
                }
                else
                {
                    ModelState.AddModelError("", StaticResources.Resources.UpdateContentCategoryFailed);
                }
            }
            return View();
        }

        // Xóa 1 hoặc nhiều dòng được check
        // ids được truyền Ajax là chuỗi chứa 1 hoặc nhiều id ngăn cách bởi dấu ,
        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.DELETE_CONTENT_CATE)]
        public ActionResult DeleteAllChecked(string ids)
        {
            if (ids != "" && ids != null)
            {
                string[] array_id = ids.Split(',');
                var dao = new content_category_dao();
                foreach (var id in array_id)
                {
                    dao.Delete(int.Parse(id));
                }
            }
            return RedirectToAction("Index");
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.EDIT_CONTENT_CATE)]
        public JsonResult ChangeActive(int id)
        {
            var result = new content_category_dao().ChangeActive(id);
            return Json(new
            {
                status = result
            });
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.EDIT_CONTENT_CATE)]
        public JsonResult ChangeShowHome(int id)
        {
            var result = new content_category_dao().ChangeShowHome(id);
            return Json(new
            {
                status = result
            });
        }
    }
}