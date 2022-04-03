namespace WebSiteClothesStore.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DonDatHang")]
    public partial class DonDatHang
    {
        [Key]
        public int MaDDH { get; set; }

        [StringLength(50)]
        public string TinhTrangDDH { get; set; }

        public bool? DaThanhToan { get; set; }

        public double? UuDai { get; set; }

        public bool? DaHuy { get; set; }

        public bool? DaXoa { get; set; }

        public bool? DaDat { get; set; }

        public int? MaKH { get; set; }

        public DateTime? NgayDat { get; set; }

        public DateTime? NgayGiao { get; set; }

        public virtual KhachHang KhachHang { get; set; }
    }
}
