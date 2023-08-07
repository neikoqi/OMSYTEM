using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MODELS;
using DAL;


namespace BLL
{
  public  class BLL_Mass
    {
        public static bool add(MODELS.MOD_Mass mass)
        {
            return DAL.DAL_Mass.add(mass);

        }

        public static List<MODELS.MOD_Mass> list()
        {
            return DAL.DAL_Mass.list();/*业务层调用dal层list*/
        }
        public static bool del(int id)
        {
            return DAL.DAL_Mass.del(id);
        }

        public static MODELS.MOD_Mass GetForum(int id)
        {
            return DAL.DAL_Mass.GetForum(id);
        }
        public static bool update(MODELS.MOD_Mass mass)
        {
            return DAL.DAL_Mass.update(mass);
        }
    }
}
