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
    
    public partial class FertilizerStore
    {
        public int Id { get; set; }
        public string Item { get; set; }
        public string Class { get; set; }
        public Nullable<decimal> Price { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public bool IsDeleted { get; set; }
        public Nullable<int> CustomerId { get; set; }
    }
}
