using Microsoft.AspNetCore.Mvc.RazorPages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using KoiShop.Repositories.Entities;
using KoiShop.Services.Interface;
using Microsoft.AspNetCore.Mvc;

namespace KoiShop.Pages
{
    public class IndexModel : PageModel
    {
        private readonly IFishService _fishService;

        public IndexModel(IFishService fishService)
        {
            _fishService = fishService;
        }

        public List<Fish> FishList { get; set; }
        public List<KoiFishCategory> KoiCategoryList { get; set; }

        [BindProperty(SupportsGet = true)]
        public int SelectedCategoryId { get; set; }

        public async Task OnGetAsync()
        {
            KoiCategoryList = await _fishService.KoiCategoryList();
            if (SelectedCategoryId > 0)
            {
                FishList = await _fishService.GetFishByType(SelectedCategoryId);
            }
            else
            {
                FishList = await _fishService.GetAllFish();
            }
        }
    }
}
