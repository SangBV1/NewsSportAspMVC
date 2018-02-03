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
    public class AdvertisementController : BaseController
    {
        [HasCredential(RoleID = CommonPublic.CommonConstants.VIEW_AD)]
        public ActionResult Index(int page = 1, int page_size = 10)
        {
            var dao = new ads_dao();
            var model = dao.ListAllPaging(page, page_size);
            return View(model);
        }

        [HttpGet]
        [HasCredential(RoleID = CommonPublic.CommonConstants.ADD_AD)]
        public ActionResult Create()
        {
            SetListPosition();
            return View();
        }

        [HttpGet]
        [HasCredential(RoleID = CommonPublic.CommonConstants.EDIT_AD)]
        public ActionResult Edit(int id)
        {
            var model = new ads_dao().Get_By_Id(id);
            SetListPosition(model.advertisement_position_id);
            return View(model);
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.ADD_AD)]
        public ActionResult Create(advertisement ad)
        {
            if (ModelState.IsValid)
            {
                var dao = new ads_dao();
                var session = (UserLogin)Session[CommonConstants.USER_SESSION];
                ad.created_by = session.username;

                bool result = dao.Insert(ad);
                if (result)
                {
                    SetAlert(StaticResources.Resources.Pub_InsertSuccess, "success");
                    return RedirectToAction("Index", "Advertisement");
                }
                else
                {
                    ModelState.AddModelError("", StaticResources.Resources.InsertAdvertisementFailed);
                }
            }
            SetListPosition();
            return View();
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.EDIT_AD)]
        public ActionResult Edit(advertisement ad)
        {
            if (ModelState.IsValid)
            {
                var dao = new ads_dao();
                var session = (UserLogin)Session[CommonConstants.USER_SESSION];
                ad.modified_by = session.username;

                var result = dao.Update(ad);
                if (result)
                {
                    SetAlert(StaticResources.Resources.Pub_UpdateSucess, "success");
                    return RedirectToAction("Index", "Advertisement");
                }
                else
                {
                    ModelState.AddModelError("", StaticResources.Resources.UpdateAdsPostitionFailed);
                }
            }
            SetListPosition(ad.advertisement_position_id);
            return View();
        }

        // Xóa 1 hoặc nhiều dòng được check
        // ids được truyền Ajax là chuỗi chứa 1 hoặc nhiều id ngăn cách bởi dấu ,
        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.DELETE_AD)]
        public ActionResult DeleteAllChecked(string ids)
        {
            if (ids != "" && ids != null)
            {
                string[] array_id = ids.Split(',');
                var dao = new ads_dao();
                foreach (var id in array_id)
                {
                    dao.Delete(int.Parse(id));
                }
            }
            return RedirectToAction("Index");
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.EDIT_AD)]
        public JsonResult ChangeActive(int id)
        {
            var result = new ads_dao().ChangeActive(id);
            return Json(new
            {
                status = result
            });
        }
        public void SetListPosition(string selected_id = null)
        {
            var dao = new ads_position_dao();
            ViewData["AdsPosition"] = new SelectList(dao.ListAll(), "id", "name", selected_id);
        }
    }
}