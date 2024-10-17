using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Libs.Shop_User
{
    public abstract class User
    {
        public User() { }
        public User(string Id, string Name, string Pass)
        {
            this.Id = Id;
            this.Name = Name;
            this.Pass = Pass;
        }

        private string Id { get; set; }
        public string getId() { return Id; }
        public void setID(string Id) { this.Id = Id; }
        public string Name { get; set; }
        public string getName() { return Name; }
        public void setName(string Name) { this.Name = Name; }
        public string Pass { get; set; }
        public string getPass() { return Pass; }
        public void setPass(string Id) { Pass = Pass; }
    }
}
