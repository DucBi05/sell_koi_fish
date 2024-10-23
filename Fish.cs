using System;
using System.Collections.Generic;

namespace KoiShop.Repositories.Entities;

public partial class Fish
{
    public int KoiId { get; set; }

    public int IdCategory { get; set; }

    public string Name { get; set; } = null!;

    public string Origin { get; set; } = null!;

    public string Gender { get; set; } = null!;

    public double Age { get; set; }

    public double Size { get; set; }

    public string Breed { get; set; } = null!;

    public double FoodAmountPerDay { get; set; }

    public string? Image { get; set; }

    public double Price { get; set; }

    public virtual ICollection<Consignment> Consignments { get; set; } = new List<Consignment>();

    public virtual KoiFishCategory IdCategoryNavigation { get; set; } = null!;

    public virtual ICollection<OrderDetail> OrderDetails { get; set; } = new List<OrderDetail>();

    public virtual ICollection<RatingFeedback> RatingFeedbacks { get; set; } = new List<RatingFeedback>();
}
