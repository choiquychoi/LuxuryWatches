using LuxuryWatches.Models;
using LuxuryWatches.Repository;
using Microsoft.AspNetCore.Mvc;
namespace LuxuryWatches.ViewComponents
{
	public class LoaiSpMenuViewComponent : ViewComponent
	{
		private readonly ILoaiSPRepository _loaiSp;
		public LoaiSpMenuViewComponent(ILoaiSPRepository loaiSpRepository) 
		{
			_loaiSp = loaiSpRepository; 
		}
		public IViewComponentResult Invoke() 
		{
			var loaisp = _loaiSp.GetAllLoaiSp().OrderBy(x => x.LoaiHang);
			return View(loaisp);
		}
	}
}
