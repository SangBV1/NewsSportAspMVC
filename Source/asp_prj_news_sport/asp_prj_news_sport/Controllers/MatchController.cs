using Model.Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace asp_prj_news_sport.Controllers
{
    public class MatchController : BaseController
    {
        public ActionResult Index(int page = 1 ,int page_size = 15,string season_id = null,string round_id = null)
        {
            var match_dao = new match_dao();
            var rank_dao = new rank_dao();

            SetListSeason(season_id);
            SetListRound(round_id, season_id);

            //Lấy thứ tự ưu tiên sắp xếp BXH
            string sort_type1 = "", sort_type2 = "", sort_type3 = "", sort_type4 = "";
            new general_rule_dao().GetSortRule(ref sort_type1, ref sort_type2, ref sort_type3, ref sort_type4);

            ViewBag.Match = match_dao.ListMatch_BySeasonRound(ref season_id, ref round_id, page, page_size);
            ViewBag.RankSeason = rank_dao.ListClubRank_BySeason(ref season_id, sort_type1, sort_type2, sort_type3, sort_type4);
            ViewBag.currentSeasonID = season_id;
            ViewBag.currentRoundID = round_id;

            return View();
        }

        public ActionResult Detail(int match_id)
        {
            var match_dao = new match_dao();
            var model = match_dao.Get_By_Id(match_id);
            ViewBag.ListGoal = new match_goal_dao().ListGoal_ByMatchID(match_id);
            ViewBag.TopViewPost = new content_dao().ListTopViewContent_By_Category(0, 3);
            ViewBag.MatchName = match_dao.GetMatchName_ByMatchID(match_id);

            //advertisement
            var ad_dao = new ads_dao();
            ViewBag.Advertisement_300x250 = ad_dao.GetAdvertisement_By_Type("300x250");

            return View(model);
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
    }
}