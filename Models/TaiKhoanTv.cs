using System;
using System.Collections.Generic;

namespace LuxuryWatches.Models;

public partial class TaiKhoanTv
{
    public string TaiKhoan { get; set; } = null!;

    public string? HoDem { get; set; }

    public string? TenTv { get; set; }

    public DateOnly? NgaySinh { get; set; }

    public string? GioiTinh { get; set; }

    public string? SoDt { get; set; }

    public string? Email { get; set; }

    public string? DiaChi { get; set; }

    public string? TrangThai { get; set; }

    public string? GhiChu { get; set; }

    public int? MaNhom { get; set; }

    public int? MaQh { get; set; }

    public int? MaTv { get; set; }

    public virtual ICollection<BaiViet> BaiViets { get; set; } = new List<BaiViet>();

    public virtual ICollection<DonHang> DonHangs { get; set; } = new List<DonHang>();

    public virtual NhomTk? MaNhomNavigation { get; set; }

    public virtual QuanHuyen? MaQhNavigation { get; set; }

    public virtual ICollection<SanPham> SanPhams { get; set; } = new List<SanPham>();

    public virtual User? User { get; set; }
}
