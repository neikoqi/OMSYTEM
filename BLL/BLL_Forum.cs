using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class BLL_Forum

    {

          public static bool add(MODELS.MOD_Forum forum)
        {
            return DAL.DAL_Forum.add(forum);

        }

        public static List<MODELS.MOD_Forum> list()
        {
            return DAL.DAL_Forum.list();/*业务层调用dal层list*/
        }
        public static bool del(int id)
        {
            return DAL.DAL_Forum.del(id);
        }

        public static MODELS.MOD_Forum GetForum(int id)
        {
            return DAL.DAL_Forum.GetForum(id);
        }
        public static bool update(MODELS.MOD_Forum forum)
        {
            return DAL.DAL_Forum.update(forum);
        }
    }   

}
