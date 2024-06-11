using System;
using System.Collections.Generic;

namespace LuxuryWatches.Models;

public partial class TChiTietSanPham
{
    public int MaLoai { get; set; }

    public int? MaSp { get; set; }

    public int? MaKichThuoc { get; set; }

    public int? MaMauSac { get; set; }

    public string? AnhDaiDien { get; set; }

    public string? Video { get; set; }

    public decimal? DonGiaBan { get; set; }

    public decimal? GiamGia { get; set; }

    public int? Slton { get; set; }

    public virtual SanPham? MaSpNavigation { get; set; }
}
