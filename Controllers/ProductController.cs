using LuxuryWatches.Repository;
using Microsoft.AspNetCore.Mvc;

namespace LuxuryWatches.Controllers
{
  public class ProductController : Controller
  {
    private readonly ISanPhamRepository _sanphamRepository;
    public ProductController(ISanPhamRepository sanPhamRepository)
    {
      _sanphamRepository = sanPhamRepository;
    }
    public async Task<IActionResult> Index(String searchString)
    {
      var sanPhams = await _sanphamRepository.GetAllAsync();
      if(!String.IsNullOrEmpty(searchString))
      {
        sanPhams = sanPhams.Where(n => n.TenSp.Contains(searchString)).ToList();
      }

      return View(sanPhams);
    }
  }
}