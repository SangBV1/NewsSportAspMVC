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
    public class MatchController : BaseController
    {
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Index(int page = 1, int page_size = 15, string season_id = null, string round_id = null)
        {
            var dao = new match_dao();
            var model = dao.ListMatch_BySeasonRound(ref season_id, ref round_id, page, page_size);
            SetListSeason(season_id);
            SetListRound(round_id, season_id);

            ViewBag.currentSeasonID = season_id;
            ViewBag.currentRoundID = round_id;

            return View(model);
        }

        [HttpGet]
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Create(string season_id = null, string round_id = null)
        {
            SetListClub(null, null,season_id);
            SetListRound(round_id, season_id);
            SetListSeason(season_id);

            return View();
        }

        [HttpGet]
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Edit(int id)
        {
            var model = new match_dao().Get_By_Id(id);
            SetListClub(model.home_club, model.guest_club, model.season_id);
            SetListRound(model.round_id);
            SetListSeason(model.season_id);
            return View(model);
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Create(match match)
        {
            if (ModelState.IsValid)
            {
                var dao = new match_dao();

                string errorMessage = "";
                var result = dao.Insert(ref errorMessage,match);

                if (result == 1)
                {
                    SetAlert(StaticResources.Resources.Pub_InsertSuccess, "success");
                    return RedirectToAction("Index", "Match", new { season_id = match.season_id, round_id = match.round_id });
                }
                else if(result == -2)
                {
                    ModelState.AddModelError("", errorMessage);
                }
                else if (result == -3)
                {
                    ModelState.AddModelError("", errorMessage);
                }
                else
                {
                    ModelState.AddModelError("", StaticResources.Resources.InsertMatchFailed);
                }
            }
            SetListClub(match.home_club, match.guest_club, match.season_id);
            SetListRound(match.round_id);
            SetListSeason(match.season_id);
            return View();
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Edit(match match)
        {
            if (ModelState.IsValid)
            {
                var dao = new match_dao();
                var result = dao.Update(match);

                if (result)
                {
                    SetAlert(StaticResources.Resources.Pub_UpdateSucess, "success");
                    return RedirectToAction("Index", "Match", new { season_id = match.season_id, round_id = match.round_id });
                }
                else
                {
                    ModelState.AddModelError("", StaticResources.Resources.UpdateMatchFailed);
                }
            }
            SetListClub(match.home_club, match.guest_club, match.season_id);
            SetListRound(match.round_id);
            SetListSeason(match.season_id);
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
            ViewData["Round"] = new SelectList(new round_dao().ListRound_BySeason(season_id), "id", "name", selected_id);
        }

        //Lấy tất cả mùa giải trong giải đấu
        public void SetListSeason(string selected_id = null)
        {
            ViewData["Season"] = new SelectList(new season_dao().ListAll(), "id", "name", selected_id);
        }

        //Lấy tất cả CLB tham gia tại mùa giải đó
        public void SetListClub(string selected_id_homeClub = null, string selected_id_guestClub = null, string season_id = null)
        {
            var dao =new football_club_dao();
            ViewData["HomeClub"] = new SelectList(dao.ListClub_BySeason(season_id), "id", "name", selected_id_homeClub);
            ViewData["GuestClub"] = new SelectList(dao.ListClub_BySeason(season_id), "id", "name", selected_id_guestClub);
        }
    }
}