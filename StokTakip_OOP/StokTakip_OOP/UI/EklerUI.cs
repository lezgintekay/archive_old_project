using StokTakip_OOP.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StokTakip_OOP.UI
{
    public class EklerUI : BaseUI
    {
        
        public void EklerKayitEkraniGoster()
        {
            EkraniTemizle();
            YazdirSatirli("### Ekler Kayıt Ekranı ###");
            Ekler ekl = new Ekler();

            Yazdir("Ekler Id : ");
            ekl.EklerId = OkuInt();

            Yazdir("Ekler Adı : "); 
            ekl.EklerAdi =OkuString();

            Yazdir("Ekler Adet : "); 
            ekl.EklerAdet = OkuInt();

            Yazdir("Ekler Fiyat : "); 
            ekl.EklerFiyat = OkuDecimal();

            if(DevamEtmekIstiyorMusunuz("Kaydetmek İstiyor Musunuz? (e)") =="e")
            {
                ekl.AddEkler(ekl);
                YazdirSatirli("Ekler Başarıyla Kaydedildi . . . ");
            }

        }

        public void EklerListeleme()
        {
            EkraniTemizle(); 

            StringBuilder sb = new StringBuilder();

            sb.Append("#Ekler ID" + "\t");
            sb.Append("#Ekler Ad" + "\t");
            sb.Append("#Ekler Adet" + "\t");
            sb.Append("#Ekler Fiyat" + "\t");
            sb.AppendLine();

            Ekler ekl = new Ekler();
            List<Ekler> eklerListe = ekl.GetAllEkler();

            foreach(Ekler item in eklerListe)
            {
                sb.Append(item.EklerId + "\t \t");
                sb.Append(item.EklerAdi + "\t \t");
                sb.Append(item.EklerAdet + "\t \t");
                sb.Append(ParasalFormat(item.EklerFiyat) + "\t \t");
                sb.AppendLine(); 


            }

            YazdirSatirli(sb.ToString());

        }

    }
}
