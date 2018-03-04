using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace asp_prj_news_sport
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            routes.MapRoute(
                name: "Content Categoty ",
                url: "news/{SlugCate}/",
                defaults: new { controller = "Content", action = "Index", id = UrlParameter.Optional },
                namespaces: new[] { "asp_prj_news_sport.Controllers" }
            );
            
            routes.MapRoute(
                name: "Content Detail",
                url: "{SlugContent}-{ID}/",
                defaults: new { controller = "Content", action = "Detail", id = UrlParameter.Optional },
                namespaces: new[] { "asp_prj_news_sport.Controllers" }
            );

            routes.MapRoute(
                name: "Search Content", 
                url: "search/",
                defaults: new { controller = "Content", action = "SearchContent", id = UrlParameter.Optional },
                namespaces: new[] { "asp_prj_news_sport.Controllers" }
            );

            routes.MapRoute(
                name: "Search Tag",
                url: "tag/{TagID}/",
                defaults: new { controller = "Content", action = "SearchTag", id = UrlParameter.Optional },
                namespaces: new[] { "asp_prj_news_sport.Controllers" }
            );

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional },
                namespaces: new[] { "asp_prj_news_sport.Controllers" }
            );
        }
    }
}
