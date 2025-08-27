using StokTakip_OOP.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StokTakip_OOP.Interfaces
{
    public interface IMesrubat
    {

        void AddMesrubat(Mesrubat pMesrubat);

        void RemoveMesrubat(Mesrubat pMesrubat);

        List<Mesrubat> GetAllMesrubat();

        Mesrubat GetMesrubatById(int pMesrubatId);



    }
}
