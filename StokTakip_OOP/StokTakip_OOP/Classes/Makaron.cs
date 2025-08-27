using StokTakip_OOP.Databases;
using StokTakip_OOP.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StokTakip_OOP.Classes
{
    public class Makaron : IMakaron
    {
        private int _makaronId;
        private string _makaronAdi;
        private int _makaronAdet;
        private decimal _makaronFiyat;


        public int MakaronId
        {
            get { return _makaronId; }
            set { _makaronId = value; }
        }
        public string MakaronAdi
        {
            get { return _makaronAdi; }
            set { _makaronAdi = value; }
        }
        public int MakaronAdet
        {
            get { return _makaronAdet;}
            set { _makaronAdet = value; }
        }
        public decimal MakaronFiyat
        {
            get { return _makaronFiyat; }
            set { _makaronFiyat = value; }
        }

        public void AddMakaron(Makaron pMakaron)
        {
            StokDB.MakaronListesi.Add(pMakaron);
        }

        public List<Makaron> GetAllMakaron()
        {
           return StokDB.MakaronListesi; 
        }

        public Makaron GetMakaronById(int pMakaronId)
        {
            Makaron val = new Makaron(); 

            foreach(Makaron item in StokDB.MakaronListesi)
            {
                if(item.MakaronId == pMakaronId)
                {
                    val = item; 
                    break;

                }
            }
            return val;
        }

        public void RemoveMakaron(Makaron pMakaron)
        {
            StokDB.MakaronListesi.Remove(pMakaron);
        }
    }


}
