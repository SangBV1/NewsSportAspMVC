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
    public class MenuTypeController : BaseController
    {
        [HasCredential(RoleID = CommonPublic.CommonConstants.VIEW_MENU_TYPE)]
        public ActionResult Index(int page = 1, int page_size = 10)
        {
            var dao = new menu_type_dao();
            var model = dao.ListAllPaging(page, page_size);
            return View(model);
        }

        [HttpGet]
        [HasCredential(RoleID = CommonPublic.CommonConstants.ADD_MENU_TYPE)]
        public ActionResult Create()
        {
            return View();
        }

        [HttpGet]
        [HasCredential(RoleID = CommonPublic.CommonConstants.EDIT_MENU_TYPE)]
        public ActionResult Edit(string id)
        {
            var model = new menu_type_dao().Get_By_Id(id);
            return View(model);
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.ADD_MENU_TYPE)]
        public ActionResult Create(menu_type type)
        {
            if (ModelState.IsValid)
            {
                var dao = new menu_type_dao();

                bool result = dao.Insert(type);
                if (result)
                {
                    SetAlert(StaticResources.Resources.Pub_InsertSuccess, "success");
                    return RedirectToAction("Index", "MenuType");
                }
                else
                {
                    ModelState.AddModelError("", StaticResources.Resources.InsertMenuTypeFailed);
                }
            }
            return View();
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.EDIT_MENU_TYPE)]
        public ActionResult Edit(menu_type type)
        {
            if (ModelState.IsValid)
            {
                var dao = new menu_type_dao();

                var result = dao.Update(type);
                if (result)
                {
                    SetAlert(StaticResources.Resources.Pub_UpdateSucess, "success");
                    return RedirectToAction("Index", "MenuType");
                }
                else
                {
                    ModelState.AddModelError("", StaticResources.Resources.UpdateMenuTypeFailed);
                }
            }
            return View();
        }

        // Xóa 1 hoặc nhiều dòng được check
        // ids được truyền Ajax là chuỗi chứa 1 hoặc nhiều id ngăn cách bởi dấu ,
        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.DELETE_MENU_TYPE)]
        public ActionResult DeleteAllChecked(string ids)
        {
            if (ids != "" && ids != null)
            {
                string[] array_id = ids.Split(',');
                var dao = new menu_type_dao();
                foreach (var id in array_id)
                {
                    dao.Delete(id);
                }
            }
            return RedirectToAction("Index");
        }
    }
}