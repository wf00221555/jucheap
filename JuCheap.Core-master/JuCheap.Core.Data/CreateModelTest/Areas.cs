using System;
using System.Collections.Generic;

namespace JuCheap.Core.Data.CreateModelTest
{
    public partial class Areas
    {
        public string Id { get; set; }
        public DateTime CreateDateTime { get; set; }
        public string CreateUserId { get; set; }
        public int DisplaySequence { get; set; }
        public bool Enabled { get; set; }
        public string FullSpelling { get; set; }
        public bool IsDeleted { get; set; }
        public int Level { get; set; }
        public string Name { get; set; }
        public string ParentId { get; set; }
        public string PathCode { get; set; }
        public string SimpleSpelling { get; set; }
    }
}
