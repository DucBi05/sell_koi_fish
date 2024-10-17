using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Libs.Shop_User
{
    public interface IUser
    {
        User createUser(string Id, string Name, string Pass, string userCase);
        User createUser(string userCase);
    }
}
