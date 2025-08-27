using StokTakip_OOP.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StokTakip_OOP.UI
{
    public class MesrubatUI : BaseUI
    {

        public void MesrubatKayitEkraniGoster()
        {
            EkraniTemizle();
            YazdirSatirli("### Meşrubat Kayıt Ekranı ###");
            Mesrubat msr = new Mesrubat();  

            Yazdir("Meşrubat Id : ");
            msr.MesrubatId = OkuInt();

            Yazdir("Meşrubat Ad : "); 
            msr.MesrubatAd = OkuString();

            Yazdir("Meşrubat Adet : ");
            msr.MesrubatAdet = OkuInt();

            Yazdir("Meşrubat Fiyat : ");
            msr.MesrubatFiyat = OkuDecimal();

            if(DevamEtmekIstiyorMusunuz("Kaydetmek istiyor musunuz? (e)") =="e")
            {
                msr.AddMesrubat(msr);
                YazdirSatirli("Meşrubat Kaydedildi");
            }

        }

        public void MesrubatListele()
        {
            EkraniTemizle();

            StringBuilder sb = new StringBuilder();

            sb.Append("#Meşrubat ID \t");
            sb.Append("#Meşrubat Adı \t");
            sb.Append("#Meşrubat Adet \t");
            sb.Append("#Meşrubat Fiyat \t");
            sb.AppendLine();

            Mesrubat msr = new Mesrubat(); 
            List<Mesrubat> mesrubatListesi = msr.GetAllMesrubat();  

            foreach(Mesrubat item in mesrubatListesi)
            {
                sb.Append(item.MesrubatId + "\t \t");
                sb.Append(item.MesrubatAd + "\t \t");
                sb.Append(item.MesrubatAdet + "\t \t");
                sb.Append(ParasalFormat(item.MesrubatFiyat) + "\t \t");
                sb.AppendLine(); 


            }
            YazdirSatirli(sb.ToString());
        }

    }
}
