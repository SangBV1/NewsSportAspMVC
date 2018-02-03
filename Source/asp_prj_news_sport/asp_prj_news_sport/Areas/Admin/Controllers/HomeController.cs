using Model.Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace asp_prj_news_sport.Areas.Admin.Controllers
{
    public class HomeController : BaseController
    {
        // GET: Admin/home
        public ActionResult Index()
        {
            var ads_dao = new ads_dao();
            var content_dao = new content_dao();

            // ViewBag - return List<>
            ViewBag.ListContentTag = new content_tag_dao().ListTag_NumberContent_Des(10);
            ViewBag.ListContentView = content_dao.ListContent_ViewCount_Des(7);

            ViewBag.ListAdClick = ads_dao.ListAd_ClickCount_Des(10);

            //ViewBag - return 1 value not List<>
            ViewBag.TotalClickAd = ads_dao.Check_TotalClickAd();

            ViewBag.TotalShareContent = content_dao.Check_TotalShareContent();
            ViewBag.TotalViewContent = content_dao.Check_TotalViewContent();

            return View();
        }
    }
}