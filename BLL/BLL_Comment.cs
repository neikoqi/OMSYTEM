using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MODELS;
using DAL;


namespace BLL
{
   public class BLL_Comment
    {
        public static bool del(int id)
        {
            return DAL.DAL_Comment.del(id);
        }
        public static List<MODELS.MOD_Comment> list()
        {
            return DAL.DAL_Comment.list();/*业务层调用dal层list*/
        }
        public static bool add(MODELS.MOD_Comment menu)
        {
            return DAL.DAL_Comment.add(menu);

        }
        public static MODELS.MOD_Comment GetForum(int id)
        {
            return DAL.DAL_Comment.GetForum(id);
        }

    }
}
