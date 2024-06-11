using Microsoft.AspNetCore.Identity;

namespace LuxuryWatches.Models
{
	public class AppUserModel:IdentityUser
	{
		public int? Id { get; set; }
	}
}
