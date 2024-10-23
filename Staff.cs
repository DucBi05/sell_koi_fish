using System;
using System.Collections.Generic;

namespace KoiShop.Repositories.Entities;

public partial class Staff
{
    public int StaffId { get; set; }

    public string StaffName { get; set; } = null!;

    public string Password { get; set; } = null!;

    public virtual ICollection<BlogPost> BlogPosts { get; set; } = new List<BlogPost>();

    public virtual ICollection<News> News { get; set; } = new List<News>();

    public virtual ICollection<Order> Orders { get; set; } = new List<Order>();
}
