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
    public class DAL_Forum
    {

        public static MOD_Forum GetForum(int id)
        {
            string strcon = "select * from  [dbo].[Forum] where id=" +id+ "";/*得到某一条记录*/
            DataTable dataTable = UTILITY.MsSqlHelper.YFMsSqlHelper.Query(strcon).Tables[0];/* 查询table参数为0*/
            return daTolist(dataTable)[0];
        }


        public static bool add(MODELS.MOD_Forum forum)
        {
            bool result = false;
            string strcon = "insert into [dbo].[Forum] (title,menu,more,state,adddate) values('" + forum.Title + "'," + forum.Menu.Id + ",'" + forum.More + "'," + forum.State + ",'" + forum.Adddate + "')";///int 与数字不加'' 字符串
            int i = UTILITY.MsSqlHelper.YFMsSqlHelper.ExecuteSql(strcon);/*返回受影响行数*/
            if (i > 0)
            {
                result = true;
            }
            return result;

        }
        public static List<MODELS.MOD_Forum> list() /*查询转化table为list*/
        {
            string strcon = "select * from [dbo].[Forum]";
            DataTable dataTable = UTILITY.MsSqlHelper.YFMsSqlHelper.Query(strcon).Tables[0];/* 查询table参数为0*/
            return daTolist(dataTable);

        }

        public static List<MODELS.MOD_Forum> daTolist(DataTable dataTable)///转化类型
        {
            List<MOD_Forum> list = new List<MOD_Forum>();

            for (int i = 0; i < dataTable.Rows.Count; i++)
            {
                MODELS.MOD_Forum forum = new MOD_Forum();

                forum.Id = int.Parse(dataTable.Rows[i]["id"].ToString());
                forum.Title = dataTable.Rows[i]["title"].ToString();

                MODELS.MOD_Menu menu = new MOD_Menu(); ///获取id
                menu = DAL.DAL_Menu.GetMenu(int.Parse(dataTable.Rows[i]["menu"].ToString()));///获得所有属性
                forum.Menu = menu;////从对象获得id

                forum.More = dataTable.Rows[i]["more"].ToString();
                forum.State = int.Parse(dataTable.Rows[i]["state"].ToString());
                forum.Adddate = DateTime.Parse(dataTable.Rows[i]["adddate"].ToString());

                list.Add(forum);
            }

            return list;
        }

        public static bool del(int id)///根据id来删除
        {
            bool result = false;
            string strcon = "delete  from [dbo].[Forum] where id =" + id + "";

            int i = UTILITY.MsSqlHelper.YFMsSqlHelper.ExecuteSql(strcon);///执行
            if (i > 0)
            {
                result = true;
            }
            return result;

        }
        public static bool update(MODELS.MOD_Forum forum)
        {
            bool result = false;
            string strcon = "update [dbo].[Forum] set title='" + forum.Title + "',menu=" + forum.Menu.Id + ",more='" + forum.More + "',state=" + forum.State + "where id='" +forum.Id +"'";///int 与数字不加'' 字符串
            int i = UTILITY.MsSqlHelper.YFMsSqlHelper.ExecuteSql(strcon);/*返回受影响行数*/
            if (i > 0)
            {
                result = true;
            }
            return result;


        }

    }
}
