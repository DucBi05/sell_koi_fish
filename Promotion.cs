using System;
using System.Collections.Generic;

namespace KoiShop.Repositories.Entities;

public partial class Promotion
{
    public int PromotionId { get; set; }

    public int DiscountPercent { get; set; }

    public string? Description { get; set; }
}
