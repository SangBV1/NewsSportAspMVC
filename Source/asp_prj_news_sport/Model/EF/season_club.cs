namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class season_club
    {
        public int id { get; set; }

        [StringLength(20)]
        [Display(Name = "Mùa giải")]
        public string idx_season_id { get; set; }

        [StringLength(20)]
        [Display(Name = "CLB")]
        public string idx_fooballClub_id { get; set; }

        public virtual football_club football_club { get; set; }

        public virtual season season { get; set; }
    }
}
