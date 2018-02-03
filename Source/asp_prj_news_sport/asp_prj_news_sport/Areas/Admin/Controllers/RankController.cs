using Model.Dao;
using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using asp_prj_news_sport.Common;
using asp_prj_news_sport.Models;

namespace asp_prj_news_sport.Areas.Admin.Controllers
{
    public class RankController : BaseController
    {
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Index(string season_id = null)
        {
            var dao = new rank_dao();

            string sort_type1 = "", sort_type2 = "", sort_type3 = "", sort_type4 = "";
            new general_rule_dao().GetSortRule(ref sort_type1, ref sort_type2, ref sort_type3, ref sort_type4);

            var model = dao.ListClubRank_BySeason(ref season_id,sort_type1, sort_type2, sort_type3, sort_type4);

            //Chọn mặc định cho các dropdownlist
            SetListSeason(season_id);
            SetListSortRule1(sort_type1);
            SetListSortRule2(sort_type2);
            SetListSortRule3(sort_type3);
            SetListSortRule4(sort_type4);

            return View(model);
        }
        //Lấy tất cả mùa giải trong giải đấu
        public void SetListSeason(string selected_id = null)
        {
            ViewData["Season"] = new SelectList(new season_dao().ListAll(), "id", "name", selected_id);
        }

        //Lấy danh sách các điều lệ sắp xếp bảng xếp hạng
        public void SetListSortRule1(string selected_id = null)
        {
            ViewData["SortRule1"] = new ListModel().ListSortRule(selected_id);
        }
        public void SetListSortRule2(string selected_id = null)
        {
            ViewData["SortRule2"] = new ListModel().ListSortRule(selected_id);
        }
        public void SetListSortRule3(string selected_id = null)
        {
            ViewData["SortRule3"] = new ListModel().ListSortRule(selected_id);
        }
        public void SetListSortRule4(string selected_id = null)
        {
            ViewData["SortRule4"] = new ListModel().ListSortRule(selected_id);
        }
    }
}