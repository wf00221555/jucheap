using System;
using System.Collections.Generic;

namespace JuCheap.Core.Data.CreateModelTest
{
    public partial class Pathcodes
    {
        public string Id { get; set; }
        public string Code { get; set; }
        public DateTime CreateDateTime { get; set; }
        public string CreateUserId { get; set; }
        public bool IsDeleted { get; set; }
        public int Len { get; set; }
    }
}
