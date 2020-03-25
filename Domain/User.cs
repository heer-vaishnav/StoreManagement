using GeneralStoreManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApplication1.Domains;

namespace GeneralStoreManagement.Domain
{
    public class UserDomain : BaseDomain
    {
        public bool IsLogin(UserModel user)
        {
            var reader = this.GetReader($"select * from Users where Name='{user.UserName}' and Password = '{user.Password}'");
            var isLoggedIn = false;
            while (reader.Read())
            {
                isLoggedIn = true;
            }
            return isLoggedIn;
        }
    }
}
