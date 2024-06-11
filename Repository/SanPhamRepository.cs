using LuxuryWatches.Models;
using Microsoft.EntityFrameworkCore;

namespace LuxuryWatches.Repository
{
    public class SanPhamRepository : ISanPhamRepository
    {
        private readonly LuxuryWebContext _context;

        public SanPhamRepository(LuxuryWebContext context)
        {
            _context = context;
        }

        public async Task AddAsync(SanPham TenSP)
        {
            await _context.SanPhams.AddAsync(TenSP);
            await _context.SaveChangesAsync();
        }

        public Task DeleteAsync(int id)
        {
            throw new NotImplementedException();
        }

        public async Task<List<SanPhamViewModel>> GetAllAsync()
        {
            List<SanPham> sanPhams = await _context.SanPhams.ToListAsync();
            List<SanPhamViewModel> sanphamViewModels = new List<SanPhamViewModel>();
            foreach (var sanPham in sanPhams) 
            {
                var sanphamViewModel = new SanPhamViewModel
                {
                    MaSp = sanPham.MaSp,
                    TenSp = sanPham.TenSp,
                    HinhDd = sanPham.HinhDd,
                    GiaBan = sanPham.GiaBan,
                    GiamGia = sanPham.GiamGia,
                    NhaSanXuat = sanPham.NhaSanXuat
                };

                sanphamViewModels.Add(sanphamViewModel);
            }
            return sanphamViewModels;
        }

        public async Task<SanPham> GetByIdAsync(int masp)
        {
            return await _context.SanPhams.FindAsync(masp);
        }

        public Task UpdateAsync(SanPham TenSP)
        {
            throw new NotImplementedException();
        }
    }
}
