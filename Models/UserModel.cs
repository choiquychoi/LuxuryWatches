using System.ComponentModel.DataAnnotations;

namespace LuxuryWatches.Models
{
	public class UserModel
	{
		public int Id { get; set; }
		[Required(ErrorMessage = "làm ơn nhập UserName vào")]
		public string UserName { get; set; }
		[DataType(DataType.Password),Required(ErrorMessage ="làm ơn nhập password")]
		public string Password { get; set; }
		[Required(ErrorMessage = "làm ơn nhập Email vào"),EmailAddress]
		public string Email { get; set; }
	}
}
