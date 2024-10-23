using System;
using System.Collections.Generic;

namespace KoiShop.Repositories.Entities;

public partial class RatingFeedback
{
    public int FeedbackId { get; set; }

    public int? CustomerId { get; set; }

    public int? KoiId { get; set; }

    public int? Rating { get; set; }

    public string? Comment { get; set; }

    public virtual Customer? Customer { get; set; }

    public virtual Fish? Koi { get; set; }
}
