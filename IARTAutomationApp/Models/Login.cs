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
    
    public partial class Login
    {
        public int Id { get; set; }
        public string Userid { get; set; }
        public string Password { get; set; }
        public string Usertype { get; set; }
        public bool IsDeleted { get; set; }
        public Nullable<System.DateTime> LoginDate { get; set; }
        public string SystemIp { get; set; }
    }
}
