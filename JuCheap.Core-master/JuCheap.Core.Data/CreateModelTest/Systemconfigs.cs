using System;
using System.Collections.Generic;

namespace JuCheap.Core.Data.CreateModelTest
{
    public partial class Systemconfigs
    {
        public string Id { get; set; }
        public DateTime CreateDateTime { get; set; }
        public string CreateUserId { get; set; }
        public DateTime DataInitedDate { get; set; }
        public bool IsDataInited { get; set; }
        public bool IsDeleted { get; set; }
        public string SystemName { get; set; }
    }
}
