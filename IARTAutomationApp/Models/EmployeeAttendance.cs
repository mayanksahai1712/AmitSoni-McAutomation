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
    
    public partial class EmployeeAttendance
    {
        public int EmployeeCode { get; set; }
        public System.DateTime OnDate { get; set; }
        public System.DateTime LoginTime { get; set; }
        public System.DateTime LogoutTime { get; set; }
        public string Status { get; set; }
    }
}
