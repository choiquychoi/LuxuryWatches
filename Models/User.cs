using System;
using System.Collections.Generic;

namespace LuxuryWatches.Models;

public partial class User
{
    public string TaiKhoan { get; set; } = null!;

    public string? MatKhau { get; set; }

    public string? LoaiUser { get; set; }

    public virtual TaiKhoanTv TaiKhoanNavigation { get; set; } = null!;
}
