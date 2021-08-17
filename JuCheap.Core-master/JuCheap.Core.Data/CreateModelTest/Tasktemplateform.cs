using System;
using System.Collections.Generic;

namespace JuCheap.Core.Data.CreateModelTest
{
    public partial class Tasktemplateform
    {
        public string Id { get; set; }
        public string ControlName { get; set; }
        public int ControlType { get; set; }
        public DateTime CreateDateTime { get; set; }
        public string CreateUserId { get; set; }
        public bool IsDeleted { get; set; }
        public int Order { get; set; }
        public string TemplateId { get; set; }

        public virtual Tasktemplate Template { get; set; }
    }
}
