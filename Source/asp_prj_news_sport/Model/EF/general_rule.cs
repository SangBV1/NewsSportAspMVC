namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class general_rule
    {
        public int id { get; set; }

        [Display(Name = "Tuổi tối đa")]
        public int? max_age { get; set; }

        [Display(Name = "Tuổi tối thiểu")]
        public int? min_age { get; set; }

        [Display(Name = "Tổng số cầu thủ tối đa")]
        public int? max_footballer { get; set; }

        [Display(Name = "Số cầu thủ ngoại tối đa")]
        public int? max_foreign_footballer { get; set; }

        [Display(Name = "Tổng số cầu thủ tối thiểu")]
        public int? min_footballer { get; set; }

        [Display(Name = "Điểm trận thắng")]
        public int? win_score { get; set; }

        [Display(Name = "Điểm trận thua")]
        public int? lose_score { get; set; }

        [Display(Name = "Điểm trận hòa")]
        public int? draw_score { get; set; }

        [Display(Name = "Thời điểm ghi bàn tối đa (phút)")]
        public int? max_time_goal { get; set; }

        [Display(Name = "Luật sắp xếp")]
        public string sort_rule { get; set; }
    }
}
