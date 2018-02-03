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
    public class SeasonController : BaseController
    {
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Index(int page = 1, int page_size = 15, string season_id = null)
        {
            var dao = new season_dao();
            var model = new football_club_dao().ListClub_BySeason(ref season_id,page, page_size);
            SetListSeason(season_id);
            ViewBag.currentSeasonID = season_id;

            return View(model);
        }

        [HttpGet]
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Create()
        {
            SetListTournament();
            return View();
        }

        [HttpGet]
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Edit(string id)
        {
            var model = new season_dao().Get_By_Id(id);
            SetListTournament(model.tournamnet_id);
            return View(model);
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Create(season season)
        {
            if (ModelState.IsValid)
            {
                var dao = new season_dao();

                int result = dao.Insert(season);
                if (result == 1)
                {
                    SetAlert(StaticResources.Resources.Pub_InsertSuccess, "success");
                    return RedirectToAction("Index", "Season");
                }
                else if(result == -2)
                {
                    ModelState.AddModelError("","Ngày bắt đầu phải nhỏ hơn ngày kết thúcss");
                }
                else if(result == -1)
                {
                    ModelState.AddModelError("", StaticResources.Resources.InsertSeasonFailed);
                }
            }
            SetListTournament(season.tournamnet_id);
            return View();
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Edit(season season)
        {
            if (ModelState.IsValid)
            {
                var dao = new season_dao();

                var result = dao.Update(season);
                if (result)
                {
                    SetAlert(StaticResources.Resources.Pub_UpdateSucess, "success");
                    return RedirectToAction("Index", "Season");
                }
                else
                {
                    ModelState.AddModelError("", StaticResources.Resources.UpdateSeasonFailed);
                }
            }
            SetListTournament(season.tournamnet_id);
            return View();
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
                var dao = new season_dao();
                foreach (var id in array_id)
                {
                    dao.Delete(id);
                }
            }
            return RedirectToAction("Index");
        }

        public void SetListTournament(string selected_id = null)
        {
            ViewData["Tournament"] = new SelectList(new tournament_dao().ListAll(), "id", "name", selected_id);
        }
        public void SetListSeason(string selected_id = null)
        {
            ViewData["Season"] = new SelectList(new season_dao().ListAll(), "id", "name", selected_id);
        }
    }
}