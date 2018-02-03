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
    public class MatchGoalController : BaseController
    {
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Index(int page = 1, int page_size = 15, int? match_id = null,string season_id = null)
        {
            var dao = new match_goal_dao();
            var model = dao.ListMatchGoal_ByMatchSeason(ref match_id,ref season_id,page, page_size);

            //setting list season for dropdownlist
            SetListSeason(season_id);

            ViewBag.Match = match_id;
            return View(model);
        }

        [HttpGet]
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Create(int match_id = 0)
        {
            //Check Match in Season
            //Default value = 0 if not exits
            var match_dao = new match_dao();
            var result_macth = match_dao.CheckMatch(match_id);
            match_id = result_macth == true ? match_id : 0;

            ViewBag.MatchName = match_dao.GetMatchName_ByMatchID(match_id);
            ViewBag.CurrentMatchID = match_id;

            //Setting list for dropdownlist 
            SetListGoalType();
            SetListFootballer(match_id);
            return View();
        }

        [HttpGet]
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Edit(int id)
        {
            var result_macth = false;

            var model = new match_goal_dao().Get_By_Id(id);

            //Check Match in Season
            //Default value = 0 if not exits
            var match_dao = new match_dao();
            if(model != null)
            {
                result_macth = match_dao.CheckMatch(model.match_id);
                SetListGoalType(model.goal_type_id);
                SetListFootballer(model.match_id, model.footballer_id);
            }
            var match_id = result_macth == true ? model.match_id : 0;

            ViewBag.MatchName = match_dao.GetMatchName_ByMatchID(match_id);
            ViewBag.CurrentMatchID = match_id;
            return View(model);
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Create(match_goal match_goal)
        {
            if (ModelState.IsValid)
            {
                var dao = new match_goal_dao();
                var info_rule = new general_rule_dao().GetRule();

                var result = dao.Insert(match_goal);
                if (result == 1)
                {
                    SetAlert(StaticResources.Resources.Pub_InsertSuccess, "success");
                    return RedirectToAction("Index", "MatchGoal", new { match_id = match_goal.match_id});
                }
                else if(result == -2)
                {
                    ModelState.AddModelError("", "Thởi điểm ghi bàn không hợp lệ (từ 0 -> "+ info_rule.max_time_goal + ")");
                }
                else
                {
                    ModelState.AddModelError("", StaticResources.Resources.InsertMatchGoalFailed);
                }
            }
            SetListGoalType(match_goal.goal_type_id);
            SetListFootballer(match_goal.match_id,match_goal.footballer_id);
            ViewBag.CurrentMatchID = match_goal.match_id;
            return View();
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Edit(match_goal match_goal)
        {
            if (ModelState.IsValid)
            {
                var dao = new match_goal_dao();
                var info_rule = new general_rule_dao().GetRule();

                var result = dao.Update(match_goal);
                if (result == 1)
                {
                    SetAlert(StaticResources.Resources.Pub_InsertSuccess, "success");
                    return RedirectToAction("Index", "MatchGoal", new { match_id = match_goal.match_id});
                }
                else if (result == -2)
                {
                    ModelState.AddModelError("", "Thởi điểm ghi bàn không hợp lệ (từ 0 -> " + info_rule.max_time_goal + ")");
                }
                else
                {
                    ModelState.AddModelError("", StaticResources.Resources.UpdateMatchGoalFailed);
                }
            }
            SetListGoalType(match_goal.goal_type_id);
            SetListFootballer(match_goal.match_id, match_goal.footballer_id);
            ViewBag.MatchName = new match_dao().GetMatchName_ByMatchID(match_goal.match_id);
            ViewBag.CurrentMatchID = match_goal.match_id;
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
                var dao = new match_goal_dao();
                foreach (var id in array_id)
                {
                    dao.Delete(int.Parse(id));
                }
            }
            return RedirectToAction("Index");
        }

        //Lấy tất loại bàn thắng
        public void SetListGoalType(string selected_id = null)
        {
            ViewData["GoalType"] = new SelectList(new goal_type_dao().ListAll(), "id", "name", selected_id);
        }

        //Lấy tất cầu thủ
        public void SetListFootballer(int? matchID, int? selected_id = null)
        {
            ViewData["Footballer"] = new SelectList(new footballer_dao().ListAll_ByMatchID(matchID), "id", "name", selected_id);
        }

        ////Lấy tất cả vòng đấu trong mùa giải
        //public void SetListRound(string selected_id = null, string season_id = null)
        //{
        //    ViewData["Round"] = new SelectList(new round_dao().ListRound_BySeason(season_id), "id", "name", selected_id);
        //}

        //Lấy tất cả mùa giải trong giải đấu
        public void SetListSeason(string selected_id = null)
        {
            ViewData["Season"] = new SelectList(new season_dao().ListAll(), "id", "name", selected_id);
        }

    }
}