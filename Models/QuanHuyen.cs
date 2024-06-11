using System;
using System.Collections.Generic;

namespace LuxuryWatches.Models;

public partial class QuanHuyen
{
    public int MaQh { get; set; }

    public string? TenQh { get; set; }

    public string? TinhThanh { get; set; }

    public string? GhiChu { get; set; }

    public virtual ICollection<KhachHang> KhachHangs { get; set; } = new List<KhachHang>();

    public virtual ICollection<TaiKhoanTv> TaiKhoanTvs { get; set; } = new List<TaiKhoanTv>();
}
