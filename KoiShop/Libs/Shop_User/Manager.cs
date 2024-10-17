using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Libs.Shop_User
{
    internal class Manager : User
    {
        public Manager() : base() { }
        public Manager(string Id, string Name, string Pass) : base(Id, Name, Pass) { }
        public override string ToString()
        {
            return $"{base.ToString()}, loaiNV:{nameof(Manager)}";
        }
    }
}
