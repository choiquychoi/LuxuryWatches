using LuxuryWatches.Models;
namespace LuxuryWatches.Repository
{
    public interface ISanPhamRepository
    {
        Task<SanPham> GetByIdAsync(int masp);
        Task<List<SanPhamViewModel>> GetAllAsync();
        Task AddAsync(SanPham TenSP);
        Task UpdateAsync(SanPham TenSP);
        Task DeleteAsync(int masp);
    }
}
