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
    public class TagController : BaseController
    {
        [HasCredential(RoleID = CommonPublic.CommonConstants.VIEW_TAG)]
        public ActionResult Index(int page = 1, int page_size = 60)
        {
            var dao = new tag_dao();
            var model = dao.ListAllPaging(page, page_size);
            return View(model);
        }
    }
}