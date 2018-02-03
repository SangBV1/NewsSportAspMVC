using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace asp_prj_news_sport.Models
{
    public class ListModel
    {
        public SelectList ListSortRule(string selected_id = null)
        {
            List<SelectListItem> items = new List<SelectListItem>()
            {
                new SelectListItem {Value = "totalScore", Text = "Tổng điểm"},
                new SelectListItem {Value = "goalDifference", Text = "Hiệu số"},
                new SelectListItem {Value = "winScore", Text = "Bàn thắng"},
                new SelectListItem {Value = "winScoreGuest", Text = "Đối kháng"},
            };
            return new SelectList(items, "Value", "Text",selected_id);
        }
    }
}