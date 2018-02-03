using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.ViewModel
{
    public class content_category_view
    {
        public int id { get; set; }
        public string name { get; set; }
        public string meta_title { get; set; }
        public int num_content { get; set; }
        public int? display_order { get; set; }
    }
}
