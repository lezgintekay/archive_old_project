using StokTakip_OOP.Databases;
using StokTakip_OOP.Interfaces;
using StokTakip_OOP.UI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StokTakip_OOP.Classes
{
    public class User : IUser
    {
        private int _userId;
        private string _userName;
        private string _password;


        public int UserId 
        { 
            get { return _userId; }
            set {  _userId = value; } 
        }
        public string UserName
        {
            get { return _userName; }
            set { _userName = value; }
        }
        public string Password
        {
            get { return _password; }
            set { _password = value; }
        }

        public void AddUser(User pUser)
        {
            StokDB.KullaniciListesi.Add(pUser);
        }

        public List<User> GetAllUsers()
        {
            return StokDB.KullaniciListesi;
        }

        public User GetUserById(int pUserId)
        {
            User val = new User();

            foreach(User item in StokDB.KullaniciListesi)
            {
                if (item.UserId == pUserId)
                {
                    val = item;
                    break;
                }
            }
            return val;

        }

        public void RemoveUser(User pUser)
        {
            StokDB.KullaniciListesi.Remove(pUser);
        }

        public void DemoUser()
        {
            User demoUser = new User();
            demoUser.UserId = 001;
            demoUser.UserName = "admin";
            demoUser.Password = "123";
            demoUser.AddUser(demoUser); 


        }

        public bool Login(string pUserName, string pPassword)
        {
            bool result = false; 

            foreach(User item in StokDB.KullaniciListesi)
            {
                if(item.UserName == pUserName && item.Password == pPassword)
                {
                    result = true;
                    break;
                }
            }
            return result;
        }
    }
}
