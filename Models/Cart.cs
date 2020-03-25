using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace GeneralStoreManagement.Models
{
    public class CartModel
    {
        [Key]
        public int CartId { get; set; }

        public string ProductsName { get; set; }

        public int ProductsPrice { get; set; }
    }
}
