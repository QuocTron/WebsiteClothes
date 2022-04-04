namespace WebSiteClothesStore.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Admin")]
    public partial class Admin
    {
        [Key]
        public int MaNV { get; set; }

        [StringLength(50)]
        public string TenNV { get; set; }

        [StringLength(100)]
        public string Email { get; set; }

        [StringLength(12)]
        public string SDT { get; set; }

        [StringLength(20)]
        public string TaiKhoan { get; set; }

        [StringLength(20)]
        public string MatKhau { get; set; }
    }
}
