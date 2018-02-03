using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace asp_prj_news_sport.Common
{
    [Serializable]
    public class UserLogin
    {
        public long user_id { set; get; }
        public string username { set; get; }
        public string user_group_id { set; get; }
    }
}