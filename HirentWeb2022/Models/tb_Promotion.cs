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
    
    public partial class tb_Promotion
    {
        public long PromotionID { get; set; }
        public Nullable<double> DiscountByPercentage { get; set; }
        public Nullable<double> DiscountByPrice { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<System.DateTime> FromDate { get; set; }
        public Nullable<System.DateTime> ToDate { get; set; }
        public Nullable<byte> Status { get; set; }
        public Nullable<byte> KindPromotion { get; set; }
    }
}
