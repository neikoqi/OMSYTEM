using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MODELS;
using UTILITY;
using System.Data;

namespace DAL
{


    public class DAL_Comment
    {
        /// <summary>
        /// 删除方法
        /// </summary>
        /// 
        public static MOD_Comment GetForum(int id)
        {
            string strcon = "select * from  [dbo].[Comment] where id=" + id + "";/*得到某一条记录*/
            DataTable dataTable = UTILITY.MsSqlHelper.YFMsSqlHelper.Query(strcon).Tables[0];/* 查询table参数为0*/
            return daTolist(dataTable)[0];
        }
        public static bool del(int id)///根据id来删除
        {
            bool result = false;
            string strcon = "delete  from [dbo].[Comment] where id =" + id + "";

            int i = UTILITY.MsSqlHelper.YFMsSqlHelper.ExecuteSql(strcon);///执行
            if (i > 0)
            {
                result = true;
            }
            return result;

        }



        /// <summary>
        /// 添加
        /// </summary>
        /// <param name="menu"></param>
        /// <returns></returns>
        public static bool add(MODELS.MOD_Comment menu)
        {
            bool result = false;
            string strcon = "insert into [dbo].[Comment] (title,state) values('" + menu.Name + "','" + menu.More + "')";
            int i = UTILITY.MsSqlHelper.YFMsSqlHelper.ExecuteSql(strcon);/*返回受影响行数*/
            if (i > 0)
            {
                result = true;
            }
            return result;

        }

        /// <summary>
        /// 例表查询
        /// </summary>
        public static List<MODELS.MOD_Comment> list() /*查询转化table为list*/
        {
            string strcon = "select * from [dbo].[Comment] ";
            DataTable dataTable = UTILITY.MsSqlHelper.YFMsSqlHelper.Query(strcon).Tables[0];/* 查询table参数为0*/
            return daTolist(dataTable);

        }

        public static List<MODELS.MOD_Comment> daTolist(DataTable dataTable)///转化类型
        {
            List<MOD_Comment> list = new List<MOD_Comment>();

            for (int i = 0; i < dataTable.Rows.Count; i++)
            {
                MODELS.MOD_Comment menu = new MOD_Comment();
                menu.Id = int.Parse(dataTable.Rows[i]["id"].ToString());
                menu.Name = dataTable.Rows[i]["name"].ToString();
                menu.More = dataTable.Rows[i]["more"].ToString();
                //menu.Date = DateTime.Parse(dataTable.Rows[i]["date"].ToString());
                list.Add(menu);
            }

            return list;
        }

        ///通过id获得属性
        ///
       
    }

}
