//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HirentWeb2022.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tb_ContactMessage
    {
        public int MessageID { get; set; }
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public string PhoneNumber { get; set; }
        public string EmailAddress { get; set; }
        public string MessageTitle { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public string IsRead { get; set; }
        public string MessageContent { get; set; }
    }
}
