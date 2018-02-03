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
    public class FootballerController : BaseController
    {
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Index(int page = 1, int page_size = 15,string club_id = "",string season_id = null)
        {
            var dao = new footballer_dao();
            var model = dao.ListAllPaging(ref season_id,page,page_size,club_id);

            var club = new football_club_dao().Get_By_Id(club_id);
            if (club != null)
            {
                ViewBag.FootballClub_Name = club.name;
                ViewBag.FootballClub_ID = club.id;
            }

            ViewBag.CurrentSeason = season_id;
            SetListSeason();
            return View(model);
        }

        [HttpGet]
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Search(int page = 1, int page_size = 15, string query = null)
        {
            var dao = new footballer_dao();
            var model = dao.ListFootballer_SearchByQuery(page, page_size, query);

            SetListSeason();
            return View(model);
        }

        [HttpGet]
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Create(string club_id = null)
        {
            SetListFootballClub(club_id);
            SetListFootballerType();
            return View();
        }

        [HttpGet]
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Edit(int id)
        {
            var model = new footballer_dao().Get_By_Id(id);
            SetListFootballClub(model.footballClub_id);
            SetListFootballerType(model.footballer_type_id);
            return View(model);
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Create(footballer footballer)
        {
            if (ModelState.IsValid)
            {
                var dao = new footballer_dao();
                var info_rule = new general_rule_dao().GetRule();

                int result = dao.Insert(footballer);
                if (result == 1)
                {
                    SetAlert(StaticResources.Resources.Pub_InsertSuccess, "success");
                    return RedirectToAction("Index", "Footballer",new { club_id = footballer.footballClub_id});
                }
                else if(result == -2)
                {
                    ModelState.AddModelError("","Tuổi không hợp lệ ("+ info_rule.min_age + " -> " + info_rule.max_age + ")");
                }
                else if (result == -3)
                {
                    ModelState.AddModelError("", "Số lượng cầu thủ trong đội đã đủ (" + info_rule.max_footballer + ")");
                }
                else if (result == -4)
                {
                    ModelState.AddModelError("", "Số lượng cầu thủ ngoại trong đội đã đủ (" + info_rule.max_foreign_footballer + ")");
                }
                else
                {
                    ModelState.AddModelError("", StaticResources.Resources.InsertFootballerFailed);
                }
            }
            SetListFootballClub(footballer.footballClub_id);
            SetListFootballerType(footballer.footballer_type_id);
            return View();
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Edit(footballer footballer)
        {
            if (ModelState.IsValid)
            {
                var dao = new footballer_dao();
                var info_rule = new general_rule_dao().GetRule();

                var result = dao.Update(footballer);
                if (result == 1)
                {
                    SetAlert(StaticResources.Resources.Pub_UpdateSucess, "success");
                    return RedirectToAction("Index", "Footballer", new { club_id = footballer.footballClub_id });
                }
                else if (result == -2)
                {
                    ModelState.AddModelError("", "Tuổi không hợp lệ (" + info_rule.min_age + " -> " + info_rule.max_age + ")");
                }
                else if (result == -3)
                {
                    ModelState.AddModelError("", "Số lượng cầu thủ ngoại trong đội đã đủ (" + info_rule.max_foreign_footballer + ")");
                }
                else
                {
                    ModelState.AddModelError("", StaticResources.Resources.UpdateFootballerFailed);
                }
            }
            SetListFootballClub(footballer.footballClub_id);
            SetListFootballerType(footballer.footballer_type_id);
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
                var dao = new footballer_dao();
                foreach (var id in array_id)
                {
                    dao.Delete(int.Parse(id));
                }
            }
            return RedirectToAction("Index");
        }
        //Lấy tất cả mùa giải trong giải đấu
        public void SetListSeason(string selected_id = null)
        {
            ViewData["Season"] = new SelectList(new season_dao().ListAll(), "id", "name", selected_id);
        }

        //Lấy danh sách loại Cầu Thủ 
        public void SetListFootballClub(string selected_id = null)
        {
            var dao = new football_club_dao();
            ViewData["FootballClub"] = new SelectList(dao.ListAll(), "id", "name", selected_id);
        }

        //Lấy danh sách CLB
        public void SetListFootballerType(string selected_id = null)
        {
            var dao = new footballer_type_dao();
            ViewData["FootballerType"] = new SelectList(dao.ListAll(), "id", "name", selected_id);
        }
    }
}