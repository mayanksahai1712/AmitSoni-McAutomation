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
    
    public partial class EmployeeMI
    {
        public int EmployeeMIId { get; set; }
        public int EmployeeCode { get; set; }
        public string NhisNo { get; set; }
        public string NhisProvider { get; set; }
        public string BloodGroup { get; set; }
        public string BloodGenotype { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<bool> IsDeleted { get; set; }
    
        public virtual EmployeeGI EmployeeGI { get; set; }
    }
}
