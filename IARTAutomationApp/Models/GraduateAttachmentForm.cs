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
    
    public partial class GraduateAttachmentForm
    {
        public int Id { get; set; }
        public Nullable<int> EmployeeCode { get; set; }
        public string OurRef { get; set; }
        public string YourRef { get; set; }
        public Nullable<System.DateTime> Date { get; set; }
        public string Name { get; set; }
        public string LetterDated { get; set; }
        public string FromDate { get; set; }
        public string ToDate { get; set; }
        public string OfficerInCharge { get; set; }
        public string PrincipalAccountant { get; set; }
        public string ReinstatePayment { get; set; }
        public string PaymentToDate { get; set; }
        public string PaymentFromDate { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public bool IsDeleted { get; set; }
    
        public virtual EmployeeGI EmployeeGI { get; set; }
        public virtual EmployeeGI EmployeeGI1 { get; set; }
    }
}
