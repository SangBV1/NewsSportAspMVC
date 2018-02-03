using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace asp_prj_news_sport.Areas.Admin.Models
{
    public class LoginModel
    {
        [Required(ErrorMessage = "Xin vui lòng nhập Username")]
        public string username { set; get; }

        [Required(ErrorMessage = "Xin vui lòng nhập Password")]
        public string password { set; get; }

        public bool remember { set; get; }
    }
}