using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using GeneralStoreManagement.Domain;

namespace GeneralStoreManagement.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class ProductDetailController : ControllerBase
    {
        [HttpGet("{id}")]
        public IActionResult Get(int id)
        {
            var productDetails = this.ProductDetailDomain.Get(id);
            return Ok(productDetails);
        }
        private ProductDetailDomain ProductDetailDomain { get; set; }
    }
}
