using LuxuryWatches.Models;

namespace LuxuryWatches.Repository
{
	public class LoaiSpRepository : ILoaiSPRepository
	{
		private readonly LuxuryWebContext _context;
		public LoaiSpRepository(LuxuryWebContext context) 
		{
		    _context = context;
		}
		public LoaiSp Add(LoaiSp LoaiHang)
		{
			_context.LoaiSps.Add(LoaiHang);
			_context.SaveChanges();
			return LoaiHang;
		}

		public LoaiSp Delete(string MaLoai)
		{
			throw new NotImplementedException();
		}

		public IEnumerable<LoaiSp> GetAllLoaiSp()
		{
			return _context.LoaiSps;
		}

		public LoaiSp GetLoaiSp(string MaLoai)
		{
			return _context.LoaiSps.Find(MaLoai);
		}

		public LoaiSp Update(LoaiSp LoaiHang)
		{
			_context.Update(LoaiHang);
			_context.SaveChanges();
			return LoaiHang;
		}
	}
}
