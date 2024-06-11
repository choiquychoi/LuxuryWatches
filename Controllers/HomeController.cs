using LuxuryWatches.Models;
using LuxuryWatches.Repository;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;
using X.PagedList;

namespace LuxuryWatches.Controllers
{
	public class HomeController : Controller
	{	
		LuxuryWebContext db = new LuxuryWebContext();
		private readonly ILogger<HomeController> _logger;

		public HomeController(ILogger<HomeController> logger)
		{
			_logger = logger;
		}

		public IActionResult Index(int? page)
		{
			int pageSize = 16;
			int pageNumber = page == null || page < 0?1 : page.Value;
			var lstsanpham = db.SanPhams.AsNoTracking().OrderBy(x => x.MaSp);
			PagedList<SanPham> lst = new PagedList<SanPham>(lstsanpham, pageNumber, pageSize);

			return View(lst);
		}

		public IActionResult SanPhamTheoLoai(int maloai, int? page)
		{
			int pageSize = 16;
			int pageNumber = page == null || page < 0 ? 1 : page.Value;
			var lstsanpham = db.SanPhams.AsNoTracking().Where(x=>x.MaLoai==maloai).OrderBy(x => x.MaSp);
			PagedList<SanPham> lst = new PagedList<SanPham>(lstsanpham, pageNumber, pageSize);
			ViewBag.maloai=maloai;

			return View(lst);
		}


		public IActionResult ChiTietSanPham(int masp) {


			var sanPham = db.SanPhams.SingleOrDefault(x => x.MaSp==masp);
			
			return View(sanPham);	
		}
	}
}
