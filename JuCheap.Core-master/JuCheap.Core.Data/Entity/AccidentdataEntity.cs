using System;
using System.Collections.Generic;
using System.Text;

namespace JuCheap.Core.Data.Entity
{
    public class AccidentdataEntity : BaseEntity
    {
        public int Id { get; set; }
        public string AlarmReceipt { get; set; }
        public string Address { get; set; }
        public string ServicePerson { get; set; }
        public string Type { get; set; }
        public DateTime? StartTime { get; set; }
        public string DaoJing { get; set; }
        public string CheLi { get; set; }
        public string AutonomyType { get; set; }
        public string FoundPerson { get; set; }
        public sbyte? PatrolArea { get; set; }
        public string DisposalResult { get; set; }
        public string Discipline { get; set; }
        public DateTime? DisciplineTime { get; set; }
        public string Dh { get; set; }
        public string IsHurt { get; set; }
        public string Km { get; set; }
        public string Remark { get; set; }
    }
}
