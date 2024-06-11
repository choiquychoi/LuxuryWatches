using LuxuryWatches.Models;
using LuxuryWatches.Models.ViewModels;
using Microsoft.AspNetCore.Components.Web;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.VisualStudio.Web.CodeGenerators.Mvc.Templates.BlazorIdentity.Pages;

namespace LuxuryWatches.Controllers
{
	public class AccountController : Controller
	{
		private UserManager<AppUserModel> _userManage;
		private SignInManager<AppUserModel> _signInManager;
		private readonly ILogger<AccountController> _logger;
		public AccountController(SignInManager<AppUserModel> signInManager, ILogger<AccountController> logger, UserManager<AppUserModel> userManager)
		{
			_signInManager = signInManager;
			_userManage = userManager;
			_logger = logger;
		}

		[HttpGet]
		public IActionResult Login(string returnUrl)
		{
			return View(new LoginViewModel { ReturnUrl = returnUrl });
		}

		[HttpPost]
		public async Task<IActionResult> Login(LoginViewModel loginVm)
		{
			try
			{
				// Log trạng thái của ModelState
				_logger.LogInformation($"ModelState.IsValid: {ModelState.IsValid}");
				foreach (var state in ModelState)
				{
					_logger.LogInformation($"Key: {state.Key}, Attempted Value: {state.Value.AttemptedValue}, Errors: {string.Join(", ", state.Value.Errors.Select(e => e.ErrorMessage))}");
				}

				if (ModelState.IsValid)
				{
					var result = await _signInManager.PasswordSignInAsync(loginVm.UserName, loginVm.Password, false, false);
					if (result.Succeeded)
					{
						return Redirect(loginVm.ReturnUrl ?? "/");
					}
					ModelState.AddModelError("", "Invalid username or password");
				}
			}
			catch (Exception ex)
			{
				// Log chi tiết lỗi
				_logger.LogError(ex, "An error occurred while attempting to login.");
				// Thêm lỗi vào ModelState để hiển thị thông báo lỗi cho người dùng
				ModelState.AddModelError("", "An unexpected error occurred. Please try again later.");
			}

			return View(loginVm);
		}

		public IActionResult Create()
		{
			return View();
		}
		[HttpPost]

		public async Task<IActionResult> Create(UserModel user)
		{
			if (ModelState.IsValid)
			{
				AppUserModel newUser = new AppUserModel { UserName = user.UserName, Email = user.Email, Id = user.Id };
				IdentityResult result = await _userManage.CreateAsync(newUser, user.Password);
				if (result.Succeeded) {
					TempData["success"] = "Tạo Thành Công User";
					return Redirect("/account/Login");
				}
				foreach (IdentityError error in result.Errors)
				{
					ModelState.AddModelError("", error.Description);
				}
			}
			return View(user);
		}
		public async Task<IActionResult> Logout(String returnUrl = "/") 
		{
			await _signInManager.SignOutAsync();
			return Redirect(returnUrl);
		}
	}
}
