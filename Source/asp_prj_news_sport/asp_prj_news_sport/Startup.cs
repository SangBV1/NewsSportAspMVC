using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(asp_prj_news_sport.Startup))]
namespace asp_prj_news_sport
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
