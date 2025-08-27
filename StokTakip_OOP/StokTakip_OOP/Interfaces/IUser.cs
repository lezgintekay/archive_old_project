using StokTakip_OOP.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StokTakip_OOP.Interfaces
{
    public interface IUser
    {

        void AddUser(User pUser);

        void RemoveUser(User pUser);

        List<User> GetAllUsers();

        User GetUserById(int id);

        bool Login(string pUserName, string pPassword); 


    }
}
