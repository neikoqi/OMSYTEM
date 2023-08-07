using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
  public   class BLL_Actives
    {
        public static bool add(MODELS.MOD_Actives actives)
        {
            return DAL.DAL_Actives.add(actives);

        }

        public static List<MODELS.MOD_Actives> list()
        {
            return DAL.DAL_Actives.list();/*业务层调用dal层list*/
        }
        public static bool del(int id)
        {
            return DAL.DAL_Actives.del(id);
        }

        public static MODELS.MOD_Actives GetForum(int id)
        {
            return DAL.DAL_Actives.GetForum(id);
        }
        public static bool update(MODELS.MOD_Actives actives)
        {
            return DAL.DAL_Actives.update(actives);
        }

    }
}
