using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using KoiShop.Repositories.Entities;

namespace KoiShop.Services.Interface
{
    public interface IFishService
    {
        Task<List<Fish>> GetFishList();
    }
}
