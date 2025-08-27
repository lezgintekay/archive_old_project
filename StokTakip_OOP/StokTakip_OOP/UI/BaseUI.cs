using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StokTakip_OOP.UI
{
    public class BaseUI
    {
        public void Yazdir(object pVal)
        {
            Console.Write(pVal);
        }
        public void YazdirSatirli(object pVal)
        {
            Console.WriteLine(pVal);
        }

        public string OkuString()
        {
            return Console.ReadLine(); 
        }
        public int OkuInt()
        {
            return Convert.ToInt32(Console.ReadLine());
        }

        public decimal OkuDecimal()
        {
            return Convert.ToDecimal(Console.ReadLine());
        }

        public void EkraniTemizle()
        {
            Console.Clear();
        }

        public string DevamEtmekIstiyorMusunuz(string pValue = "Devam etmek istiyor musunz ? (e)")
        {
            YazdirSatirli(pValue);
            return OkuString();
        }

        public string ParasalFormat(decimal pValue)
        {
            Console.OutputEncoding = Encoding.UTF8;
            return pValue.ToString("c", new CultureInfo("tr-TR"));
        }
    }
}
