using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.ViewModel
{
    public class content_view
    {
        public long id { get; set; }
        public string name { get; set; }
        public string meta_title { get; set; }
        public string description_content { get; set; }
        public string url_image { get; set; }
        public string detail { get; set; }
        public int? content_category_id { get; set; }
        public int? share_count { get; set; }
        public int? view_count { get; set; }
        public string tag { get; set; }
        public string seo_title { get; set; }
        public DateTime? created_at { get; set; }
        public string created_by { get; set; }
        public DateTime? modified_at { get; set; }
        public string modified_by { get; set; }
        public string meta_keyword { get; set; }
        public string meta_description { get; set; }
        public bool is_active { get; set; }
        public bool is_top_hot { get; set; }
        public string content_category_name { get; set; }
        public string content_category_title { get; set; }

    }
}
