using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using KoiShop.Repositories.Entities;
using KoiShop.Repositories.Interface;
using KoiShop.Services.Interface;

namespace KoiShop.Services
{
    public class FishService : IFishService
    {
        private readonly IFishRepository _fishRepository;

        public FishService(IFishRepository fishRepository)
        {
            _fishRepository = fishRepository;
        }
        public Task<List<Fish>> GetFishList()
        {
            return _fishRepository.GetAllFish();
        }
    }
}
