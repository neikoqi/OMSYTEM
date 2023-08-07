using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MODELS;
using DAL;

namespace BLL
{
    public class BLL_Type

    {

        public static bool del(int id)
        {
            return DAL.DAL_Type.del(id);
        }
        public static List<MODELS.MOD_Type> list()
        {
            return DAL.DAL_Type.list();/*业务层调用dal层list*/
        }
        public static bool add(MODELS.MOD_Type menu)
        {
            return DAL.DAL_Type.add(menu);

        }
        public static MOD_Type GetMenu(int id)
        {
            return BLL.BLL_Type.GetMenu(id);
        }
    }
    
    }
