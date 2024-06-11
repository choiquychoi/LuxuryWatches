using System;
using System.Collections.Generic;

namespace LuxuryWatches.Models;

public partial class KhachHang
{
    public int MaKh { get; set; }

    public string? TenKh { get; set; }

    public string? SoDt { get; set; }

    public string? Email { get; set; }

    public string? DiaChi { get; set; }

    public DateOnly? NgaySinh { get; set; }

    public string? GioiTinh { get; set; }

    public string? GhiChu { get; set; }

    public int? MaQh { get; set; }

    public decimal? DiemTichLuy { get; set; }

    public string? TaiKhoan { get; set; }

    public virtual ICollection<DonHang> DonHangs { get; set; } = new List<DonHang>();

    public virtual QuanHuyen? MaQhNavigation { get; set; }
}
