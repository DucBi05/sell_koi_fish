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

        public bool AddFish(Fish fish)
        {
            return _fishRepository.AddFish(fish);
        }

        public bool DeleteFish(int id)
        {
            return _fishRepository.DeleteFish(id);
        }

        public Task<Fish> GetFishById(int id)
        {
            return _fishRepository.GetFishById(id);
        }

        public bool UpdateFish(Fish fish)
        {
            return _fishRepository.UpdateFish(fish);
        }

        public Task<List<Fish>> GetFishByType(int idCategory)
        {
            return _fishRepository.GetFishByType(idCategory);
        }

		public Task<List<KoiFishCategory>> KoiCategoryList()
		{
			return _fishRepository.KoiCategoryList();
		}

        public Task<List<Fish>> GetAllFish()
        {
            return _fishRepository.GetAllFishs();
        }

        public bool AddFishIntoFishBought(FishBought fish)
        {
            return _fishRepository.AddFishIntoFishBought(fish);
        }
    }
}
