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
    public class SeasonRoundController : BaseController
    {
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Index(int page = 1, int page_size = 15, string season_id = null)
        {
            var dao = new season_round_dao();
            var model = dao.ListAllPaging(page, page_size);
            SetListSeason(season_id);
            SetListRound();

            ViewBag.currentSeasonID = season_id;

            return View(model);
        }

        [HttpGet]
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Create(string season_id = null)
        {
            SetListRound();
            SetListSeason(season_id);

            return View();
        }


        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Create(season_round seasonRound)
        {
            if (ModelState.IsValid)
            {
                var dao = new season_round_dao();

                var result = dao.Insert(seasonRound);
                if (result)
                {
                    SetAlert(StaticResources.Resources.Pub_InsertSuccess, "success");
                    return RedirectToAction("Index", "Match", new { season_id = seasonRound.idx_season_id });
                }

                else
                {
                    ModelState.AddModelError("", StaticResources.Resources.InsertSeasonRoundFailed);
                }
            }
            SetListRound(seasonRound.idx_round_id);
            SetListSeason(seasonRound.idx_season_id);
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
                var dao = new match_dao();
                foreach (var id in array_id)
                {
                    dao.Delete(int.Parse(id));
                }
            }
            return RedirectToAction("Index");
        }

        //Lấy tất cả vòng đấu trong mùa giải
        public void SetListRound(string selected_id = null, string season_id = null)
        {
            ViewData["Round"] = new SelectList(new round_dao().ListAll(), "id", "name", selected_id);
        }

        //Lấy tất cả mùa giải trong giải đấu
        public void SetListSeason(string selected_id = null)
        {
            ViewData["Season"] = new SelectList(new season_dao().ListAll(), "id", "name", selected_id);
        }

    }
}