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
    
    public partial class EmployeeAI
    {
        public int EmployeeAIId { get; set; }
        public int EmployeeCode { get; set; }
        public string InstitutionAttended1 { get; set; }
        public string InstitutionAttended2 { get; set; }
        public string InstitutionAttended3 { get; set; }
        public string Qualification1 { get; set; }
        public string Qualification2 { get; set; }
        public string Qualification3 { get; set; }
        public string YearOfGraduation1 { get; set; }
        public string YearOfGraduation2 { get; set; }
        public string YearOfGraduation3 { get; set; }
        public string ProfessionalAssociationsTitle { get; set; }
        public string ProfessionalAssociationsIdNo { get; set; }
        public Nullable<System.DateTime> ProfessionalAssociationsDate { get; set; }
        public string ConferenceAttendedName { get; set; }
        public string ConferenceAttendedTitle { get; set; }
        public Nullable<System.DateTime> ConferenceAttendedDate { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<bool> IsDeleted { get; set; }
        public Nullable<int> CustomerId { get; set; }
    
        public virtual EmployeeGI EmployeeGI { get; set; }
    }
}
