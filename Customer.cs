using System;
using System.Collections.Generic;

namespace KoiShop.Repositories.Entities;

public partial class Customer
{
    public int CustomerId { get; set; }

    public string CustomerName { get; set; } = null!;

    public string Password { get; set; } = null!;

    public string Phone { get; set; } = null!;

    public string Address { get; set; } = null!;

    public virtual ICollection<Consignment> Consignments { get; set; } = new List<Consignment>();

    public virtual ICollection<Order> Orders { get; set; } = new List<Order>();

    public virtual ICollection<RatingFeedback> RatingFeedbacks { get; set; } = new List<RatingFeedback>();
}
