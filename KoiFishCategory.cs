using System;
using System.Collections.Generic;

namespace KoiShop.Repositories.Entities;

public partial class KoiFishCategory
{
    public int Id { get; set; }

    public string Name { get; set; } = null!;

    public virtual ICollection<Fish> Fish { get; set; } = new List<Fish>();
}
