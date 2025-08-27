using StokTakip_OOP.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StokTakip_OOP.Interfaces
{
    public interface IEkler
    {
        void AddEkler(Ekler pEkler);
        
        void DeleteEkler(Ekler pEkler); 

        List<Ekler> GetAllEkler(); 

        Ekler GetEklerById(int pEklerId);
    }
}
