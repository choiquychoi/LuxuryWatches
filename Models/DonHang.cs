using System;
using System.Collections.Generic;

namespace LuxuryWatches.Models;

public partial class DonHang
{
    public int SoDh { get; set; }

    public int? MaKh { get; set; }

    public string? TaiKhoan { get; set; }

    public DateTime? NgayDat { get; set; }

    public bool? DaKichHoat { get; set; }

    public DateTime? NgayGh { get; set; }

    public string? DiaChiGh { get; set; }

    public string? GhiChu { get; set; }

    public string? TrangThai { get; set; }

    public virtual ICollection<CtDonHang> CtDonHangs { get; set; } = new List<CtDonHang>();

    public virtual KhachHang? MaKhNavigation { get; set; }

    public virtual TaiKhoanTv? TaiKhoanNavigation { get; set; }
}
