using GeneralStoreManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApplication1.Domains;

namespace GeneralStoreManagement.Domain
{
    public class ProductDetailDomain : BaseDomain
    {
        public List<ProductDetailModel> Get(int ProductId)
        {
            var reader = this.GetReader($"select * from ProductDetails where ProductId='{ProductId}' ");
            var productDetails = new List<ProductDetailModel>();
            while (reader.Read())
            {
                var ProductDetail = new ProductDetailModel();
                ProductDetail.ProductDetailId = reader.GetInt32(1);
                ProductDetail.ProductStock = reader.GetInt32(2);
                ProductDetail.ProductDiscount = reader.GetInt32(3);
                ProductDetail.ProductDescription = reader.GetString(4);
            }
            return productDetails;
        }
    }
}
