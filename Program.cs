using KoiShop.Repositories;
using KoiShop.Repositories.Entities;
using KoiShop.Repositories.Interface;
using KoiShop.Services;
using KoiShop.Services.Interface;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddRazorPages();
//DI
builder.Services.AddDbContext<KoiShopContext>();
//DI Repositories
builder.Services.AddScoped<IFishRepository, FishRepository>();
//DI Services
builder.Services.AddScoped<IFishService, FishService>();
var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapRazorPages();

app.Run();
