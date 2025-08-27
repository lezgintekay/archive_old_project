using StokTakip_OOP.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StokTakip_OOP.Interfaces
{
    public interface IMakaron
    {
        void AddMakaron(Makaron pMakaron);

        void RemoveMakaron(Makaron pMakaron); 

        List<Makaron>GetAllMakaron();

        Makaron GetMakaronById(int pMakaronId); 
    }
}
