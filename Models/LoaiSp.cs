using System;
using System.Collections.Generic;

namespace LuxuryWatches.Models;

public partial class LoaiSp
{
    public int MaLoai { get; set; }

    public string? LoaiHang { get; set; }

    public string? GhiChu { get; set; }

    public virtual ICollection<BaiViet> BaiViets { get; set; } = new List<BaiViet>();
}
