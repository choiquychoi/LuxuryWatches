using System;
using System.Collections.Generic;

namespace LuxuryWatches.Models;

public partial class SanPham
{
    public int MaSp { get; set; }

    public string? TenSp { get; set; }

    public string? HinhDd { get; set; }

    public string? NdTomTat { get; set; }

    public DateTime? NgayDang { get; set; }

    public string? TaiKhoan { get; set; }

    public bool? DaDuyet { get; set; }

    public decimal GiaBan { get; set; }

    public decimal? GiamGia { get; set; }

    public int? MaLoai { get; set; }

    public string? NhaSanXuat { get; set; }

    public string? Dvt { get; set; }

    public virtual ICollection<CtDonHang> CtDonHangs { get; set; } = new List<CtDonHang>();

    public virtual ICollection<TChiTietSanPham> TChiTietSanPhams { get; set; } = new List<TChiTietSanPham>();

    public virtual TaiKhoanTv? TaiKhoanNavigation { get; set; }
}
