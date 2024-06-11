using System.ComponentModel.DataAnnotations;

namespace LuxuryWatches.Models.ViewModels
{
    public class RegisterViewModel
    {
        [Required]
        [EmailAddress]
        public string Email { get; set; }

        [Required]
        [DataType(DataType.Password)]
        public string Password { get; set; }

        [DataType(DataType.Password)]
        [Display(Name = "Confirm password")]
        [Compare("Password", ErrorMessage = "The password and confirmation password do not match.")]
        public string ConfirmPassword { get; set; }

        public string HoDem { get; set; }
        public string TenTv { get; set; }
        public DateTime NgaySinh { get; set; }
    }
}