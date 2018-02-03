namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("menu")]
    public partial class menu
    {
        public int id { get; set; }

        [StringLength(50)]
        [Display(Name = "Tên")]
        public string name { get; set; }

        [StringLength(200)]
        [Display(Name = "Link")]
        public string url { get; set; }

        [StringLength(20)]
        [Display(Name = "Target")]
        public string target { get; set; }

        [Required(ErrorMessage = "TT ưu tiên không được để trống")]
        [Display(Name = "Ưu tiên")]
        public int? display_order { get; set; }

        [Display(Name = "Kích hoạt")]
        public bool is_active { get; set; }

        [Display(Name = "Loại")]
        public string menu_type_id { get; set; }

        public virtual menu_type menu_type { get; set; }
    }
}
