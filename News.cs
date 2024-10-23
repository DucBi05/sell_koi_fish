using System;
using System.Collections.Generic;

namespace KoiShop.Repositories.Entities;

public partial class News
{
    public int NewsId { get; set; }

    public int? CustomerId { get; set; }

    public string? Title { get; set; }

    public string? Content { get; set; }

    public int? AuthorId { get; set; }

    public DateOnly? PublishDate { get; set; }

    public virtual Staff? Customer { get; set; }
}
