using System;
using System.Collections.Generic;

namespace KoiShop.Repositories.Entities;

public partial class Order
{
    public int OrderId { get; set; }

    public int CustomerId { get; set; }

    public int StaffId { get; set; }

    public DateOnly? OrderDate { get; set; }

    public string? Status { get; set; }

    public string PaymentMethod { get; set; } = null!;

    public virtual Customer Customer { get; set; } = null!;

    public virtual ICollection<OrderDetail> OrderDetails { get; set; } = new List<OrderDetail>();

    public virtual Staff Staff { get; set; } = null!;
}
