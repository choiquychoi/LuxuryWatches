using System;
using System.Collections.Generic;

namespace LuxuryWatches.Models;

public partial class CtDonHang
{
    public int SoDh { get; set; }

    public int MaSp { get; set; }

    public int? SoLuong { get; set; }

    public decimal? Giaban { get; set; }

    public decimal? GiamGia { get; set; }

    public virtual SanPham MaSpNavigation { get; set; } = null!;

    public virtual DonHang SoDhNavigation { get; set; } = null!;
}
