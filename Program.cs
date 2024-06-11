using LuxuryWatches.Data;
using LuxuryWatches.Models;
using LuxuryWatches.Repository;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using System.Configuration;

var builder = WebApplication.CreateBuilder(args);

var connectionString = builder.Configuration.GetConnectionString("LuxuryWebContext");
builder.Services.AddDbContext<LuxuryWebContext>(x => x.UseSqlServer(connectionString));
	

// Add services to the container.
builder.Services.AddControllersWithViews();

builder.Services.AddDistributedMemoryCache();





builder.Services.AddScoped<ILoaiSPRepository, LoaiSpRepository>();
builder.Services.AddScoped<ISanPhamRepository, SanPhamRepository>();

builder.Services.AddDbContext<LuxuryWebContext>(options =>
	options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));



builder.Services.AddSession(options =>
{
	options.IdleTimeout = TimeSpan.FromMinutes(30);
	options.Cookie.IsEssential = true;
});


builder.Services.AddIdentity<AppUserModel,IdentityRole>()
	.AddEntityFrameworkStores<LuxuryWebContext>().AddDefaultTokenProviders();


// Configure Identity options if needed
builder.Services.Configure<IdentityOptions>(options =>
{
	options.Password.RequireDigit = true;
	options.Password.RequireLowercase = true;
	options.Password.RequireUppercase = true;
	options.Password.RequireNonAlphanumeric = true;
	options.Password.RequiredLength = 6;
});



var app = builder.Build();
app.UseSession();
// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
	app.UseExceptionHandler("/Home/Error");
	// The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
	app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthentication();
app.UseAuthorization();

app.MapControllerRoute(
	name: "default",
	pattern: "{controller=Home}/{action=Index}/{id?}");

app.Run();
