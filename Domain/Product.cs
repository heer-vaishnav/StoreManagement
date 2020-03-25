using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApplication1.Domains;
using GeneralStoreManagement.Models;

namespace GeneralStoreManagement.Domain
{
    public class ProductDomain : BaseDomain
    {
        public List<ProductModel> Get(int UserId)
        {
            var reader = this.GetReader($"select * from Products where UserId='{UserId}' ");
            var products = new List<ProductModel>();
            while (reader.Read())
            {
                var Product = new ProductModel();
                Product.ProductId = reader.GetInt32(1);
                Product.ProductName = reader.GetString(2);
                Product.ProductPrice = reader.GetInt32(3);
                products.Add(Product);
            }
            return products;
        }

        public void Add(ProductModel products)
        {
            this.ExecuteNonQuery($"insert into carts values('{products.ProductName}','{products.ProductPrice}')");
        }
    }
}
