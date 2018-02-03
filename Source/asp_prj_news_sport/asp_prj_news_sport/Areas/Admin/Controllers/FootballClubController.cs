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
    public class FootballClubController : BaseController
    {
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Index(int page = 1, int page_size = 15)
        {
            var dao = new football_club_dao();
            var model = dao.ListAllPaging(page, page_size);
            SetListSeason();
            return View(model);
        }

        [HttpGet]
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Create()
        {
            return View();
        }

        [HttpGet]
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Edit(string id)
        {
            var model = new football_club_dao().Get_By_Id(id);
            return View(model);
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Create(football_club club)
        {
            if (ModelState.IsValid)
            {
                var dao = new football_club_dao();

                bool result = dao.Insert(club);
                if (result)
                {
                    SetAlert(StaticResources.Resources.Pub_InsertSuccess, "success");
                    return RedirectToAction("Index", "FootballClub");
                }
                else
                {
                    ModelState.AddModelError("", StaticResources.Resources.InsertFootballClubFailed);
                }
            }
            return View();
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Edit(football_club pos)
        {
            if (ModelState.IsValid)
            {
                var dao = new football_club_dao();

                var result = dao.Update(pos);
                if (result)
                {
                    SetAlert(StaticResources.Resources.Pub_UpdateSucess, "success");
                    return RedirectToAction("Index", "FootballClub");
                }
                else
                {
                    ModelState.AddModelError("", StaticResources.Resources.UpdateFootballClubFailed);
                }
            }
            return View();
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.EDIT_AD)]
        public JsonResult ChangeActive(string id)
        {
            var result = new football_club_dao().ChangeActive(id);
            return Json(new
            {
                status = result
            });
        }

        // Xóa 1 hoặc nhiều dòng được check
        // ids được truyền Ajax là chuỗi chứa 1 hoặc nhiều id ngăn cách bởi dấu ,
        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult DeleteAllChecked(string ids)
        {
            if (ids != "" && ids != null)
            {
                string[] array_id = ids.Split(',');
                var dao = new football_club_dao();
                foreach (var id in array_id)
                {
                    dao.Delete(id);
                }
            }
            return RedirectToAction("Index");
        }
        public void SetListSeason(string selected_id = null)
        {
            ViewData["Season"] = new SelectList(new season_dao().ListAll(), "id", "name", selected_id);
        }
    }
}