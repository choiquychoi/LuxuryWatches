using System;
using System.Collections.Generic;

namespace LuxuryWatches.Models;

public partial class BaiViet
{
    public int MaBv { get; set; }

    public string? TenBv { get; set; }

    public string? HinhDd { get; set; }

    public string? NdTomTat { get; set; }

    public DateTime? NgayDang { get; set; }

    public string? NoiDung { get; set; }

    public string? TaiKhoan { get; set; }

    public bool? DaDuyet { get; set; }

    public int? MaLoai { get; set; }

    public virtual LoaiSp? MaLoaiNavigation { get; set; }

    public virtual TaiKhoanTv? TaiKhoanNavigation { get; set; }
}
