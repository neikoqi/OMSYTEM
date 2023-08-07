using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MODELS;
namespace DAL
{
  public  class DAL_Actives
    {

        public static MODELS.MOD_Actives GetForum(int id)
        {
            string strcon = "select * from [dbo].[Activities] where id=" + id + "";/*得到某一条记录*/
            DataTable dataTable = UTILITY.MsSqlHelper.YFMsSqlHelper.Query(strcon).Tables[0];/* 查询table参数为0*/
            return daTolist(dataTable)[0];
        }


        public static bool add(MODELS.MOD_Actives actives)
        {
            bool result = false;
            string strcon = "insert into [dbo].[Activities](name,AC_type,AC_timeBegin,AC_timeOver,AC_place,AC_numbers,AC_timePublish,AC_timeApplicationOver,more) values('" + actives.Name + "'," + actives.AC_type1 + ",'" + actives.AC_timeBegin1 + "'," + actives.AC_timeOver1 + ",'" + actives.AC_place1 + "'," + actives.AC_numbers1 + ",'" + actives.AC_timePublish1 + "','" + actives.AC_timeApplicationOver1 + "','" + actives.More + "')";///int 与数字不加'' 字符串
            int i = UTILITY.MsSqlHelper.YFMsSqlHelper.ExecuteSql(strcon);/*返回受影响行数*/
            if (i > 0)
            {
                result = true;
            }
            return result;

        }
        public static List<MODELS.MOD_Actives> list() /*查询转化table为list*/
        {
            string strcon = "select * from [dbo].[Activities]";
            DataTable dataTable = UTILITY.MsSqlHelper.YFMsSqlHelper.Query(strcon).Tables[0];/* 查询table参数为0*/
            return daTolist(dataTable);

        }

        public static List<MODELS.MOD_Actives> daTolist(DataTable dataTable)///转化类型
        {
            List<MOD_Actives> list = new List<MOD_Actives>();

            for (int i = 0; i < dataTable.Rows.Count; i++)
            {
                MODELS.MOD_Actives actives = new MOD_Actives();

                actives.Id = int.Parse(dataTable.Rows[i]["id"].ToString());
                actives.Name = dataTable.Rows[i]["name"].ToString();
                actives.AC_place1 = dataTable.Rows[i]["AC_place"].ToString();
                
                actives.AC_numbers1 = dataTable.Rows[i]["AC_numbers"].ToString();
                //MODELS.MOD_Menu menu = new MOD_Menu(); ///获取id
                //menu = DAL.DAL_Menu.GetMenu(int.Parse(dataTable.Rows[i]["menu"].ToString()));///获得所有属性
                //actives.Menu = menu;////从对象获得id

                actives.More = dataTable.Rows[i]["more"].ToString();
                actives.AC_type1 = dataTable.Rows[i]["AC_type"].ToString();
                actives.AC_timeBegin1 = DateTime.Parse(dataTable.Rows[i]["AC_timeBegin"].ToString());
                actives.AC_timeOver1 = DateTime.Parse(dataTable.Rows[i]["AC_timeOver"].ToString());
                //actives.AC_timePublish1 = DateTime.Parse(dataTable.Rows[i]["AC_timePublish"].ToString());
                //actives.AC_timeApplicationOver1 = DateTime.Parse(dataTable.Rows[i]["AC_timeApplicationOver"].ToString());

                list.Add(actives);
            }

            return list;
        }

        public static bool del(int id)///根据id来删除
        {
            bool result = false;
            string strcon = "delete  from [dbo].[Activities] where id =" + id + "";

            int i = UTILITY.MsSqlHelper.YFMsSqlHelper.ExecuteSql(strcon);///执行
            if (i > 0)
            {
                result = true;
            }
            return result;

        }
        public static bool update(MODELS.MOD_Actives actives)
        {
            bool result = false;
            string strcon = "update [dbo].[Activities] set name='" + actives.Name + "',AC_type=" + actives.AC_type1 + ",more='" + actives.More + "',AC_type=" + actives.AC_type1 + "where id='" + actives.Id + "'";///int 与数字不加'' 字符串
            int i = UTILITY.MsSqlHelper.YFMsSqlHelper.ExecuteSql(strcon);/*返回受影响行数*/
            if (i > 0)
            {
                result = true;
            }
            return result;


        }
    }
}
