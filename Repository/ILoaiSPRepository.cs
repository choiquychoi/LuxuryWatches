using LuxuryWatches.Models;
namespace LuxuryWatches.Repository
{
	public interface ILoaiSPRepository
	{
		LoaiSp Add(LoaiSp LoaiHang);
		LoaiSp Update(LoaiSp LoaiHang);
		LoaiSp Delete(String MaLoai);

		LoaiSp GetLoaiSp(String MaLoai);

		IEnumerable<LoaiSp> GetAllLoaiSp();

	}
}
