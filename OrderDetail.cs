﻿using System;
using System.Collections.Generic;

namespace KoiShop.Repositories.Entities;

public partial class OrderDetail
{
    public int OrderDetailId { get; set; }

    public int OrderId { get; set; }

    public int KoiId { get; set; }

    public int PromotionId { get; set; }

    public int? Quantity { get; set; }

    public decimal? SalePrice { get; set; }

    public virtual Fish Koi { get; set; } = null!;

    public virtual Order Order { get; set; } = null!;
}
