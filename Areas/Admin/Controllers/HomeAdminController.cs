using LuxuryWatches.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using X.PagedList;

namespace LuxuryWatches.Areas.Admin.Controllers
{
    [Area("admin")]
    [Route("admin")]
    [Route("admin/homeadmin")]
    [Authorize]
    public class HomeAdminController : Controller
    {
        LuxuryWebContext db = new LuxuryWebContext();
        [Route("")]
        [Route("index")]
        public IActionResult Index()
        {
            return View();
        }
        [Route("danhmucsanpham")]

        public IActionResult DanhMucSanPham(int? page)
        {
            int pageSize = 12;
            int pageNumber = page == null || page < 0 ? 1 : page.Value;
            var lstsanpham = db.SanPhams.AsNoTracking().OrderBy(x => x.MaSp);
            PagedList<SanPham> lst = new PagedList<SanPham>(lstsanpham, pageNumber, pageSize);

            return View(lst);
        }

        [Route("ThemSanPhamMoi")]
        [HttpGet]
        
        public IActionResult ThemSanPhamMoi()
        {
            ViewBag.MaLoai = new SelectList(db.LoaiSps.ToList(), "MaLoai", "LoaiHang");

            return View();
        }
        [Route("ThemSanPhamMoi")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult ThemSanPhamMoi(SanPham sanpham)
        {
            if (ModelState.IsValid)
            {
                db.SanPhams.Add(sanpham);
                db.SaveChanges();
                return RedirectToAction("DanhMucSanPham");
            }
            return View(sanpham);
        }

        [Route("SuaSanPham")]
        [HttpGet]
        public IActionResult SuaSanPham(int MaSp)
        {
            ViewBag.MaLoai = new SelectList(db.LoaiSps.ToList(), "MaLoai", "LoaiHang");
            var sanpham = db.SanPhams.Find(MaSp);

            return View(sanpham);
        }
        [Route("SuaSanPham")]
        [HttpPost]
        [ValidateAntiForgeryToken]

        public IActionResult SuaSanPham(SanPham sanpham)
        {
            if (ModelState.IsValid)
            {
                db.Update(sanpham);
                db.SaveChanges();
                return RedirectToAction();
            }
            return View(sanpham);
        }
        [Route("XoaSanPham")]
        [HttpGet]
        public IActionResult XoaSanPHam(int MaSp)
        {
            TempData["Message"] = "";
            var chitietsanpham = db.SanPhams.Where(x => x.MaSp == MaSp).ToList();
            if (chitietsanpham.Count() > 0) 
            {
                TempData["Message"] = "KHÔNG XÓA ĐƯỢC SẢN PHẨM NÀY ";
                return RedirectToAction("DanhMucSanPham", "HomeAdmin");
            }
            var ctdonhang = db.CtDonHangs.Where(x => x.Equals(MaSp));
            if (ctdonhang.Any()) db.RemoveRange(ctdonhang);
            db.Remove(db.SanPhams.Find(MaSp));
            db.SaveChanges();
            TempData["Message"] = "ĐÃ XÓA SẢN PHẨM NÀY";
            return RedirectToAction("DanhMucSanPham", "HomeAdmin");
        }
    }
}
