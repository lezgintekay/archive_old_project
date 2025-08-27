using StokTakip_OOP.Classes;
using StokTakip_OOP.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StokTakip_OOP.UI
{
    public class MenuUI :BaseUI
    {

        public void AnaMenuGoster()
        {
            do
            {
                EkraniTemizle(); 

                StringBuilder sb = new StringBuilder();
                sb.AppendLine("1 - Ekler Kayıt");
                sb.AppendLine("2 - Makaron Kayıt");
                sb.AppendLine("3 - Meşrubat Kayıt");
                sb.AppendLine("4 - Ekler Listele");
                sb.AppendLine("5 - Makaron Listele");
                sb.AppendLine("6 - Meşrubat Listele");
                sb.AppendLine("7 - Çıkış");

                Yazdir(sb.ToString());
                menuSecimİslemleri();

            } while (DevamEtmekIstiyorMusunuz("Anamenüye Dönmek İster Misiniz? (e)") == "e"); 
        }

        private void menuSecimİslemleri()
        {
            int kullanicininYaptigiSecim = OkuInt();

            switch (kullanicininYaptigiSecim)
            {
                case (int)(MenuSecimEnum.EklerKayıt):
                    EklerUI eklerUI = new EklerUI();
                    eklerUI.EklerKayitEkraniGoster();
                break;

                case (int)(MenuSecimEnum.MakaronKayıt):
                    MakaronUI mkrUI = new MakaronUI();
                    mkrUI.MakaronEkraniGoster();
                    break;

                case (int)(MenuSecimEnum.MesrubatKayıt):
                    MesrubatUI msrUI = new MesrubatUI();
                    msrUI.MesrubatKayitEkraniGoster();
                    break;

                case (int)(MenuSecimEnum.EklerListeleme):

                    EklerUI eklUI = new EklerUI();
                    eklUI.EklerListeleme();

                    break;

                case (int)(MenuSecimEnum.MakaronListeleme):

                    mkrUI = new MakaronUI();
                    mkrUI.MakaronListele();
                    break;

                case (int)(MenuSecimEnum.MeşrubatListeleme):
                    msrUI =new MesrubatUI();
                    msrUI.MesrubatListele();
                    break;

                case (int)(MenuSecimEnum.Çıkış):

                    KullaniciUI k = new KullaniciUI();
                    k.CikisYap();

                    break;
               
                default: 

                    break; 
            }

        }
    }
}
