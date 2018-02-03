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
    public class MenuController : BaseController
    {
        [HasCredential(RoleID = CommonPublic.CommonConstants.VIEW_MENU)]
        public ActionResult Index(int page = 1, int page_size = 10)
        {
            var dao = new menu_dao();
            var model = dao.ListAllPaging(page, page_size);
            return View(model);
        }

        [HttpGet]
        [HasCredential(RoleID = CommonPublic.CommonConstants.ADD_MENU)]
        public ActionResult Create()
        {
            SetListType();
            return View();
        }

        [HttpGet]
        [HasCredential(RoleID = CommonPublic.CommonConstants.EDIT_MENU)]
        public ActionResult Edit(int id)
        {
            var model = new menu_dao().Get_By_Id(id);
            SetListType(model.menu_type_id);
            return View(model);
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.ADD_MENU)]
        public ActionResult Create(menu menu)
        {
            if (ModelState.IsValid)
            {
                var dao = new menu_dao();

                bool result = dao.Insert(menu);
                if (result)
                {
                    SetAlert(StaticResources.Resources.Pub_InsertSuccess, "success");
                    return RedirectToAction("Index", "Menu");
                }
                else
                {
                    ModelState.AddModelError("", StaticResources.Resources.InsertMenuFailed);
                }
            }
            SetListType(menu.menu_type_id);
            return View();
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.EDIT_MENU)]
        public ActionResult Edit(menu menu)
        {
            if (ModelState.IsValid)
            {
                var dao = new menu_dao();

                var result = dao.Update(menu);
                if (result)
                {
                    SetAlert(StaticResources.Resources.Pub_UpdateSucess, "success");
                    return RedirectToAction("Index", "Menu");
                }
                else
                {
                    ModelState.AddModelError("", StaticResources.Resources.UpdateMenuFailed);
                }
            }
            SetListType(menu.menu_type_id);
            return View();
        }

        // Xóa 1 hoặc nhiều dòng được check
        // ids được truyền Ajax là chuỗi chứa 1 hoặc nhiều id ngăn cách bởi dấu ,
        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.DELETE_MENU)]
        public ActionResult DeleteAllChecked(string ids)
        {
            if (ids != "" && ids != null)
            {
                string[] array_id = ids.Split(',');
                var dao = new menu_dao();
                foreach (var id in array_id)
                {
                    var result = dao.Delete(int.Parse(id));
                }
            }
            return RedirectToAction("Index");
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.EDIT_AD)]
        public JsonResult ChangeActive(int id)
        {
            var result = new menu_dao().ChangeActive(id);
            return Json(new
            {
                status = result
            });
        }

        public void SetListType(string selected_id = null)
        {
            var dao = new menu_type_dao();
            ViewData["MenuType"] = new SelectList(dao.ListAll(), "id", "name", selected_id);
        }
    }
}