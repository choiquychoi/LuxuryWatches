namespace LuxuryWatches.Models
{
	public class CartItemModel
	{
		public long ProductId { get; set; }
		public string ProductName { get; set; }
		public int Quantity { get; set; }
		public decimal price { get; set; }
		public string image { get; set; }
		public decimal total {
			get { return Quantity * price; }
		}
		public CartItemModel() 
		{ 
		
		}
		public CartItemModel(SanPham sanpham) 
		{
			ProductId = sanpham.MaSp;
			ProductName = sanpham.TenSp;
			price = sanpham.GiaBan;
			Quantity = 1;
			image = sanpham.HinhDd;
		}
	}
}
