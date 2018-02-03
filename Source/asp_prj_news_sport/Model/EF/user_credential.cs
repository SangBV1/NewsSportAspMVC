namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class user_credential
    {
        public long id { get; set; }

        [Required]
        [StringLength(20)]
        [Display(Name = "Nhóm thành viên")]
        public string idx_user_group_id { get; set; }

        [StringLength(50)]
        [Display(Name = "Chức năng")]
        public string idx_user_role_id { get; set; }

        public virtual user_group user_group { get; set; }

        public virtual user_role user_role { get; set; }
    }
}
