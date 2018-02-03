using Model.Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace asp_prj_news_sport.Controllers
{
    public class HomeController : BaseController
    {
        public ActionResult Index()
        {
            var content_dao = new content_dao();
            var ad_dao = new ads_dao();

            var model = content_dao.ListTopNewContent_By_Category(0, 6);
            ViewBag.ListBanner = ad_dao.ListAd_ByPostion("1280x500");
            return View(model);
        }

        [ChildActionOnly]
        public ActionResult Header()
        {
            // lấy tất cả menu 
            var model = new menu_dao().ListAll();
            return PartialView(model);
        }

        [ChildActionOnly]
        public ActionResult Footer()
        {
            // lấy tất cả menu 
            var model = new menu_dao().ListAll();

            // lấy thông tin giới thiệu về website
            ViewBag.AboutWeb = new info_dao().Get_By_Id("ABOUT");

            return PartialView(model);
        }
    }
}