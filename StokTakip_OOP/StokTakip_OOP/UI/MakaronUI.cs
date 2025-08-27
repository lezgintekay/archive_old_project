using StokTakip_OOP.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StokTakip_OOP.UI
{
    public class MakaronUI : BaseUI
    {
        public void MakaronEkraniGoster()
        {
            EkraniTemizle();
            YazdirSatirli("### Makaron Kayıt Ekranı ###");

            Makaron mkr = new Makaron();

            Yazdir("Makaron Id : "); 
            mkr.MakaronId = OkuInt();

            Yazdir("Makaron Adı : ");
            mkr.MakaronAdi = OkuString();

            Yazdir("Makaron Adet : ");
            mkr.MakaronAdet = OkuInt();

            Yazdir("Makaron Fiyat : "); 
            mkr.MakaronFiyat = OkuDecimal();

            if (DevamEtmekIstiyorMusunuz("Kaydetmek İstiyor Musunuz ? (e)") == "e")
            {
                mkr.AddMakaron(mkr);
                YazdirSatirli("Makaron Başarıyla Kaydedildi . . .");
            }



        }

        public void MakaronListele()
        {
            EkraniTemizle();
            StringBuilder sb = new StringBuilder();

            sb.Append("Makaron ID" + "\t");
            sb.Append("Makaron Adı" + "\t");
            sb.Append("Makaron Adet" + "\t");
            sb.Append("Makaron Fiyat" + "\t");
            sb.AppendLine();

            Makaron mkr = new Makaron();
            List<Makaron> makaronListe = mkr.GetAllMakaron(); 

            foreach(Makaron item in makaronListe)
            {
                sb.Append(item.MakaronId + "\t\t");
                sb.Append(item.MakaronAdi + "\t\t");
                sb.Append(item.MakaronAdet + "\t\t");
                sb.Append(ParasalFormat(item.MakaronFiyat) +"\t\t");
                sb.AppendLine(); 

            }
            YazdirSatirli(sb.ToString());
        }
    }
}
