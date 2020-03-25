using GeneralStoreManagement.Domain;
using GeneralStoreManagement.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GeneralStoreManagement.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class ProductController : ControllerBase
    {
        public ProductController()
        {
            this.ProductDomain = new ProductDomain();
        }
        [HttpPost]
        public IActionResult Post(ProductModel product)
        {
            this.ProductDomain.Add(product);
            return Ok();
        }
        [HttpGet("{id}")]
        public IActionResult Get(int id)
        {
            var qualifications = this.ProductDomain.Get(id);
            return Ok(qualifications);

        }

        private ProductDomain ProductDomain { get; set; }
    }
}
