using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using KoiShop.Repositories.Entities;

namespace KoiShop.Repositories.Interface
{
    public interface IFishRepository
    {
        Task<Fish> GetFishById(int id);
        Boolean DeleteFish(int id);
        Boolean UpdateFish(Fish fish);
        Boolean AddFish(Fish fish);

        Task<List<Fish>> GetAllFishs();
        Task<List<Fish>> GetFishByType(int idCategory);
        Task<List<KoiFishCategory>> KoiCategoryList();

        Boolean AddFishIntoFishBought(FishBought fish);
    }
}
