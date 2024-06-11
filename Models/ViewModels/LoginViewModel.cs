using System.ComponentModel.DataAnnotations;

namespace LuxuryWatches.Models.ViewModels
{
	public class LoginViewModel
	{
		public int Id { get; set; }
		[Required(ErrorMessage = "làm ơn nhập UserName vào")]
		public string UserName { get; set; }
		[DataType(DataType.Password), Required(ErrorMessage = "làm ơn nhập password")]
		public string Password { get; set; }
		public string ReturnUrl { get; set; }

	}
}
