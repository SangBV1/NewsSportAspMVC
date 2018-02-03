using Model.Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace asp_prj_news_sport.Controllers
{
    public class ContentController : BaseController
    {
        // GET: Content
        public ActionResult Index(string SlugCate, int page = 1, int pagesize = 12)
        {
            var content_dao = new content_dao();
            int total_record = 0;
            var model = content_dao.ListContent_By_SlugCategory(ref total_record,SlugCate, page, pagesize);

            // -- Xu ly phan trang
            ViewBag.Total = total_record;
            ViewBag.Page = page;

            int MaxPage = 3;
            int TotalPage = 0;

            TotalPage = (int)Math.Ceiling(((double)total_record / (double)pagesize));
            ViewBag.TotalPage = TotalPage;
            ViewBag.MaxPage = MaxPage;
            ViewBag.First = 1;
            ViewBag.Last = TotalPage;
            ViewBag.Next = page + 1;
            ViewBag.Prev = page - 1;
            // -- // phan trang

            return View(model);
        }

        public ActionResult Detail(long ID)
        {
            var content_dao = new content_dao();
            var content_category_dao = new content_category_dao();

            var model = content_dao.View_DetailContent_By_ID(ID);
            ViewBag.ContentTag = new tag_dao().ListAllTag_By_ContentID(ID);
            ViewBag.RelatedPost = content_dao.ListTopView_RelatedPost_By_ContentID(ID, 3);

            //advertisement
            var ad_dao = new ads_dao();
            ViewBag.Advertisement_300x250 = ad_dao.GetAdvertisement_By_Type("300x250");
            ViewBag.Advertisement_300x600 = ad_dao.GetAdvertisement_By_Type("300x600");

            return View(model);
        }

        [HttpPost]
        public JsonResult IncreaseViewCount(long id)
        {
            var result = new content_dao().IncreaseViewCount(id);
            return Json(new
            {
                status = result
            });
        }

        [HttpPost]
        public JsonResult IncreaseShareCount(long id)
        {
            var result = new content_dao().IncreaseShareCount(id);
            return Json(new
            {
                status = result
            });
        }

        [HttpPost]
        public JsonResult IncreaseClickAd(int id)
        {
            var result = new ads_dao().IncreaseClickCount(id);
            return Json(new
            {
                status = result
            });
        }

        public ActionResult SearchContent(string query, int page = 1, int pagesize = 12)
        {
            var content_dao = new content_dao();
            int total_record = 0;
            var model = content_dao.ListContent_By_SearchQuery(ref total_record, query, page, pagesize);

            ViewBag.SearchQuery = query;

            // -- Xu ly phan trang
            ViewBag.Total = total_record;
            ViewBag.Page = page;

            int MaxPage = 3;
            int TotalPage = 0;

            TotalPage = (int)Math.Ceiling(((double)total_record / (double)pagesize));
            ViewBag.TotalPage = TotalPage;
            ViewBag.MaxPage = MaxPage;
            ViewBag.First = 1;
            ViewBag.Last = TotalPage;
            ViewBag.Next = page + 1;
            ViewBag.Prev = page - 1;
            // -- // phan trang

            return View(model);
        }

        public ActionResult SearchTag(string TagID, int page = 1, int pagesize = 12)
        {
            var content_dao     = new content_dao();
            var tag_dao         = new tag_dao();
            var result_tag      = tag_dao.CheckTag(TagID);
            int total_record    = 0;
            var model           = content_dao.ListContent_By_TagID(ref total_record, TagID, page, pagesize);

            //check tag exist
            ViewBag.SearchTag   = result_tag == true ? tag_dao.Get_By_Id(TagID).name : "";
           

            // -- Xu ly phan trang
            ViewBag.Total       = total_record;
            ViewBag.Page        = page;

            int MaxPage         = 3;
            int TotalPage       = 0;

            TotalPage           = (int)Math.Ceiling(((double)total_record / (double)pagesize));
            ViewBag.TotalPage   = TotalPage;
            ViewBag.MaxPage     = MaxPage;
            ViewBag.First       = 1;
            ViewBag.Last        = TotalPage;
            ViewBag.Next        = page + 1;
            ViewBag.Prev        = page - 1;
            // -- // phan trang

            return View(model);
        }
    }
}