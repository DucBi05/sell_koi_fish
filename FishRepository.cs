using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using KoiShop.Repositories.Entities;
using KoiShop.Repositories.Interface;
using Microsoft.EntityFrameworkCore;

namespace KoiShop.Repositories
{
    public class FishRepository : IFishRepository
    {
        private readonly KoiShopContext _context;
        public FishRepository(KoiShopContext context)
        {
            _context = context;
        }

        public async Task<List<Fish>> GetAllFish()
        {
            return await _context.Fish.ToListAsync();
        }
    }
}
