using StokTakip_OOP.Interfaces;
using StokTakip_OOP.Databases;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StokTakip_OOP.Classes
{
    public class Mesrubat : IMesrubat
    {
        private int _mesrubatId; 
        private string _mesrubatAd;
        private int _mesrubatAdet;
        private decimal _mesrubatFiyat;

        public int MesrubatId 
        {
            get { return _mesrubatId; }
            set { _mesrubatId = value; }
        }
        public string MesrubatAd
        {
            get { return _mesrubatAd; }
            set { _mesrubatAd = value; }
        }
        public int MesrubatAdet
        {
            get { return _mesrubatAdet; }
            set { _mesrubatAdet = value; }
        }
        public decimal MesrubatFiyat
        {
            get { return _mesrubatFiyat; }
            set { _mesrubatFiyat = value; }
        }

        public void AddMesrubat(Mesrubat pMesrubat)
        {
            StokDB.MesrubatListesi.Add(pMesrubat);
        }

        public List<Mesrubat> GetAllMesrubat()
        {
            return StokDB.MesrubatListesi;
        }

        public Mesrubat GetMesrubatById(int pMesrubatId)
        {
            Mesrubat val = new Mesrubat();
            foreach(Mesrubat item in StokDB.MesrubatListesi)
            {
                if(item.MesrubatId == pMesrubatId)
                {
                    val = item; 
                    break;
                }
            }
            return val;
        }

        public void RemoveMesrubat(Mesrubat pMesrubat)
        {
            StokDB.MesrubatListesi.Remove(pMesrubat);
        }
    }
}
