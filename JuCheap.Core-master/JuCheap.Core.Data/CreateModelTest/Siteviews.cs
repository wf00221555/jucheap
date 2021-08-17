using System;
using System.Collections.Generic;

namespace JuCheap.Core.Data.CreateModelTest
{
    public partial class Siteviews
    {
        public string Id { get; set; }
        public DateTime CreateDateTime { get; set; }
        public string CreateUserId { get; set; }
        public DateTime Day { get; set; }
        public bool IsDeleted { get; set; }
        public int Number { get; set; }
    }
}
