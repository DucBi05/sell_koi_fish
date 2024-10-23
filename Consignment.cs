using System;
using System.Collections.Generic;

namespace KoiShop.Repositories.Entities;

public partial class Consignment
{
    public int ConsignmentId { get; set; }

    public int CustomerId { get; set; }

    public int KoiId { get; set; }

    public DateOnly StartDate { get; set; }

    public DateOnly? EndDate { get; set; }

    public string? Status { get; set; }

    public virtual Customer Customer { get; set; } = null!;

    public virtual Fish Koi { get; set; } = null!;
}
