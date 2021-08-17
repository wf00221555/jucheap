using System;
using System.Collections.Generic;

namespace JuCheap.Core.Data.CreateModelTest
{
    public partial class Tasktemplatestepoperate
    {
        public string Id { get; set; }
        public DateTime CreateDateTime { get; set; }
        public string CreateUserId { get; set; }
        public bool IsDeleted { get; set; }
        public string Name { get; set; }
        public int OperateDirection { get; set; }
        public int Order { get; set; }
        public string StepId { get; set; }

        public virtual Tasktemplatestep Step { get; set; }
    }
}
