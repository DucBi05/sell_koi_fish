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
        Task<List<Fish>> GetAllFish();
    }
}
