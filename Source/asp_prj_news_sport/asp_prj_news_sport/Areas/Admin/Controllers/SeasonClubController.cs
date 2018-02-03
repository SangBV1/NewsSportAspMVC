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
    public class SeasonClubController : BaseController
    {
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Index()
        {
            return RedirectToAction("Index", "Season");
        }

        [HttpGet]
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Create(string season_id = null)
        {
            SetListClub();
            SetListSeason(season_id);
            return View();
        }
       

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Create(season_club seasonClub)
        {
            if (ModelState.IsValid)
            {
                var dao = new season_club_dao();

                bool result = dao.Insert(seasonClub);
                if (result)
                {
                    SetAlert(StaticResources.Resources.Pub_InsertSuccess, "success");
                    return RedirectToAction("Index", "Season",new { season_id = seasonClub.idx_season_id});
                }
                else
                {
                    ModelState.AddModelError("", StaticResources.Resources.InsertSeasonClubFailed);
                }
            }
            SetListClub(seasonClub.idx_fooballClub_id);
            SetListSeason(seasonClub.idx_season_id);
            return View();
        }

        // Xóa 1 hoặc nhiều dòng được check
        // ids được truyền Ajax là chuỗi chứa 1 hoặc nhiều id ngăn cách bởi dấu ,
        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult DeleteAllChecked(string seasonID,string clubIDs)
        {
            if (clubIDs != "" && clubIDs != null)
            {
                string[] array_id = clubIDs.Split(',');
                var dao = new season_club_dao();
                foreach (var clubID in array_id)
                {
                    dao.DeleteByUniqueID(seasonID,clubID);
                }
            }
            return RedirectToAction("Index");
        }
        
        public void SetListSeason(string selected_id = null)
        {
            var dao = new season_dao();
            ViewData["Season"] = new SelectList(dao.ListAll(), "id", "name", selected_id);
        }

        public void SetListClub(string selected_id = null)
        {
            var dao = new football_club_dao();
            ViewData["Club"] = new SelectList(dao.ListAll(), "id", "name", selected_id);
        }
    }
}