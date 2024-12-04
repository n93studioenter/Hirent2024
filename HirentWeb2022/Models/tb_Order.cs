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
    
    public partial class tb_Order
    {
        public long OrderID { get; set; }
        public Nullable<long> CustomerID { get; set; }
        public string OrderCode { get; set; }
        public Nullable<byte> OrderType { get; set; }
        public Nullable<double> DiscountAmount { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<System.DateTime> PickupTime { get; set; }
        public Nullable<System.DateTime> ReturnTime { get; set; }
        public Nullable<int> Quantity { get; set; }
        public Nullable<long> ServiceSelectionID { get; set; }
        public Nullable<long> DeliverySelectionID { get; set; }
        public Nullable<long> DocumentSelectionID { get; set; }
        public Nullable<double> TotalDepositAmount { get; set; }
        public Nullable<double> TotalOrderValue { get; set; }
        public Nullable<byte> OrderStatus { get; set; }
        public Nullable<long> UpdatedBy { get; set; }
        public Nullable<System.DateTime> UpdatedDate { get; set; }
        public Nullable<bool> UpdatingStatus { get; set; }
        public Nullable<long> productId { get; set; }
        public Nullable<int> TotalTimes { get; set; }
        public Nullable<long> TotalPriceAccess { get; set; }
        public Nullable<long> TotalPrices { get; set; }
        public Nullable<int> IsDisplay { get; set; }
        public Nullable<long> TotalInstall { get; set; }
        public Nullable<long> TotalDelivery { get; set; }
        public Nullable<long> TotalOrders { get; set; }
        public Nullable<int> DepositId { get; set; }
        public string Dichvuvanchuyen { get; set; }
        public string Dichvulapdat { get; set; }
        public string Totaldeposit { get; set; }
        public Nullable<int> hinhthuc { get; set; }
        public string hinhthuccontent { get; set; }
        public string Ghichucoc1 { get; set; }
        public string Ghichucoc2 { get; set; }
    }
}