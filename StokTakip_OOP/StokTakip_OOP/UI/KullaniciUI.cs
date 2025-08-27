using StokTakip_OOP.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Text;
using System.Threading.Tasks;

namespace StokTakip_OOP.UI
{
    public class KullaniciUI :BaseUI
    {

        public void LoginMenusu()
        {
            Yazdir("Kullanici Adi : ");
            string pKullaniciAdi = OkuString();

            Yazdir("Şifre : ");
            string pSifre = OkuString();

            User u = new User();
            u.DemoUser();

            bool sonuc = u.Login(pKullaniciAdi, pSifre); 

            if (sonuc == true)
            {
                EkraniTemizle(); 
                MenuUI m = new MenuUI();
                m.AnaMenuGoster(); 
            }
            else
            {
                YazdirSatirli("Giriş Başarısız");
            }

        }

        public void CikisYap()
        {
            EkraniTemizle();
            Yazdir(DevamEtmekIstiyorMusunuz("Çıkış Yapmak İstediğinize Emin Misiniz? (e)") == "e"); 
            Environment.Exit(0);    
            
        }


    }
}
