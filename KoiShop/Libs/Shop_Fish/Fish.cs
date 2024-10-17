using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Libs.Shop_Fish
{
    internal class Fish
    {
        //public string Origin;
        //public string Sex;
        //public string Age;
        public Fish() { }

        public Fish(string Origin, string Sex, string Age)
        {
            this.Origin = Origin;
            this.Sex = Sex;
            this.Age = Age;
        }

        private string Origin { get; set; }
        public string getOrigin() { return Origin; }
        public void setID(String Origin) { this.Origin = Origin; }
        public string Sex { get; set; }
        public string getName() { return Sex; }
        public void setName(String Sex) { this.Sex = Sex; }
        public string Age { get; set; }
        public string getPass() { return Age; }
        public void setPass(String Age) { this.Age = Age; }
    }
}
