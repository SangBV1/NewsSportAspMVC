namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class content_tag
    {
        public long id { get; set; }

        [Display(Name = "Bài viết")]
        public long? idx_content_id { get; set; }

        [StringLength(50)]
        [Display(Name = "Thẻ tag")]
        public string idx_tag_id { get; set; }

        public virtual content content { get; set; }

        public virtual tag tag { get; set; }
    }
}
