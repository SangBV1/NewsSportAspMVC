namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class system_config
    {
        [StringLength(50)]
        [Required(ErrorMessage = "ID không được để trống")]
        [Display(Name = "ID")]
        public string id { get; set; }

        [StringLength(50)]
        [Display(Name = "Tên")]
        public string name { get; set; }

        [StringLength(50)]
        [Display(Name = "Loại")]
        public string type { get; set; }

        [StringLength(250)]
        [Display(Name = "Giá trị")]
        public string value { get; set; }

        public bool is_active { get; set; }
    }
}
