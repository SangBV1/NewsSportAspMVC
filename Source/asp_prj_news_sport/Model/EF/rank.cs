namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("rank")]
    public partial class rank
    {
        public int id { get; set; }

        [StringLength(20)]
        [Display(Name = "CLB")]
        public string footballClub_id { get; set; }

        [Display(Name = "Trận thắng")]
        public int? win_match { get; set; }

        [Display(Name = "Trận thắng trên sân khách")]
        public int? win_match_guest { get; set; }

        [Display(Name = "Trận hòa")]
        public int? draw_match { get; set; }

        [Display(Name = "Trân thua")]
        public int? lose_match { get; set; }

        [Display(Name = "Bàn thắng")]
        public int? win_score { get; set; }

        [Display(Name = "Bàn thua")]
        public int? lose_score { get; set; }

        [StringLength(20)]
        [Display(Name = "Mùa giải")]
        public string season_id { get; set; }

        public virtual football_club football_club { get; set; }

        public virtual season season { get; set; }
    }
}
