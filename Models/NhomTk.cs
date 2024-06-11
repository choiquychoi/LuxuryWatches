using System;
using System.Collections.Generic;

namespace LuxuryWatches.Models;

public partial class NhomTk
{
    public int MaNhom { get; set; }

    public string? TenNhom { get; set; }

    public string? GhiChu { get; set; }

    public virtual ICollection<TaiKhoanTv> TaiKhoanTvs { get; set; } = new List<TaiKhoanTv>();
}
