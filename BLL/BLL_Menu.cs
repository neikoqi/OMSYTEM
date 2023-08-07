using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MODELS;
using DAL;

namespace BLL
{
    public class BLL_Menu

    {

        public static bool del(int id)
        {
            return DAL.DAL_Menu.del(id);
        }
        public static List<MODELS.MOD_Menu> list()
        {
            return DAL.DAL_Menu.list();/*业务层调用dal层list*/
        }
        public static bool add(MODELS.MOD_Menu menu)
        {
            return DAL.DAL_Menu.add(menu);

        }
        public static MOD_Menu GetMenu(int id)
        {
            return BLL.BLL_Menu.GetMenu(id);
        }
    }
    
    }
