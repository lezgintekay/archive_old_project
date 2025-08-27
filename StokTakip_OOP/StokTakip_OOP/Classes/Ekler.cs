using StokTakip_OOP.Databases;
using StokTakip_OOP.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StokTakip_OOP.Classes
{
    public class Ekler : IEkler
    {
        private int _eklerId;
        private string _eklerAdi;
        private int _eklerAdet;
        private decimal _eklerFiyat;

        public int EklerId
        {
            get { return _eklerId; }
            set { _eklerId = value; }
        }

        public string EklerAdi
        {
            get { return _eklerAdi; }
            set { _eklerAdi = value; }

        }

        public int EklerAdet
        {
            get { return _eklerAdet; }
            set { _eklerAdet = value; }
        }
        public decimal EklerFiyat
        {
            get { return _eklerFiyat; }
            set { _eklerFiyat = value; }
        }



        public void AddEkler(Ekler pEkler)
        {
            StokDB.EklerListesi.Add(pEkler);
        }

        public void DeleteEkler(Ekler pEkler)
        {
            StokDB.EklerListesi.Remove(pEkler);
        }

        public List<Ekler> GetAllEkler()
        {
            return StokDB.EklerListesi;
        }

        public Ekler GetEklerById(int pEklerId)
        {
           // return StokDB.EklerListesi.Find(x => x.EklerId == pEklerId);

            Ekler val = new Ekler(); 

            foreach(Ekler ekler in StokDB.EklerListesi)
            {
                if(ekler.EklerId == pEklerId)
                {
                    val = ekler;
                    break;
                }
            }
            return val;
        }
    }
}
