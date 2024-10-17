using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Libs.Shop_User
{
    internal class Customer : User
    {
        public Customer() : base() { }
        public Customer(string Id, string Name, string Pass) : base(Id, Name, Pass) { }
        public override string ToString()
        {
            return $"{base.ToString()}, loaiNV:{nameof(Customer)}";
        }
    }
}
