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
    public class UserController : ControllerBase
    {
        public UserController()
        {
            this.UserDomain = new UserDomain();
        }

        [HttpPost]
        public IActionResult Post(UserModel user)
        {
            var isLoggedIn = this.UserDomain.IsLogin(user);
            return Ok(isLoggedIn);
        }

        private UserDomain UserDomain { get; set; }
    }
}
