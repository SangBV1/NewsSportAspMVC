namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class match_goal
    {
        public int id { get; set; }

        [Required(ErrorMessage = "Thời gian không được để trống")]
        [Display(Name = "Thời gian")]
        public int time_at { get; set; }

        [Display(Name = "Cầu thủ ghi bàn")]
        public int? footballer_id { get; set; }

        [StringLength(20)]
        [Display(Name = "Loại bàn thắng")]
        public string goal_type_id { get; set; }

        [Display(Name = "Trận đấu")]
        public int? match_id { get; set; }

        public virtual footballer footballer { get; set; }

        public virtual goal_type goal_type { get; set; }

        public virtual match match { get; set; }
    }
}
