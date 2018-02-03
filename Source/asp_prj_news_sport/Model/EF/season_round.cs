namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class season_round
    {
        public int id { get; set; }

        [StringLength(20)]
        [Display(Name = "Mùa giải")]
        public string idx_season_id { get; set; }

        [StringLength(20)]
        [Display(Name = "Vòng đấu")]
        public string idx_round_id { get; set; }

        public virtual round round { get; set; }

        public virtual season season { get; set; }
    }
}
