//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace IARTAutomationApp.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class SalaryStructureMaster
    {
        public int SalaryScaleId { get; set; }
        public string SalaryScale { get; set; }
        public Nullable<int> GradeLevel { get; set; }
        public Nullable<int> Step { get; set; }
        public Nullable<decimal> SalaryAmount { get; set; }
        public Nullable<bool> IsActive { get; set; }
        public Nullable<bool> IsDeleted { get; set; }
        public string ScaleYear { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<int> CustomerId { get; set; }
    }
}
