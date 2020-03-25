using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace GeneralStoreManagement.Models
{
    public class ProductDetailModel
    {
        [Key]
        public int ProductDetailId { get; set; }

        [Required]
        public int ProductStock { get; set; }

        [Required]
        public int ProductDiscount { get; set; }

        [Required]
        public string ProductDescription { get; set; }
    }
}
