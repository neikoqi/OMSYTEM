using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MODELS;
using System.Data;

namespace DAL
{
   public class DAL_Mass
    {
        public static MODELS.MOD_Mass GetForum(int id)
        {
            string strcon = "select *from [dbo].[MassOrganizaitions]  where MO_id=" + id + "";/*得到某一条记录*/
            DataTable dataTable = UTILITY.MsSqlHelper.YFMsSqlHelper.Query(strcon).Tables[0];/* 查询table参数为0*/
            return daTolist(dataTable)[0];
        }


        public static bool add(MODELS.MOD_Mass mass)
        {
            bool result = false;
            string strcon = "insert into [dbo].[MassOrganizaitions](Mo_name,mo_more,MO_type,MO_information,Mo_place,MO_members,Create_time,Update_time) values('" + mass.Mo_name + "','" + mass.Mo_more + "','" + mass.Mo_type + "','" + mass.Mo_information + "','" + mass.Mo_place + "','" + mass.Mo_members + "','" + mass.Create_time1 + "','" + mass.Update_time1+ "')";///int 与数字不加'' 字符串
            int i = UTILITY.MsSqlHelper.YFMsSqlHelper.ExecuteSql(strcon);/*返回受影响行数*/
            if (i > 0)
            {
                result = true;
            }
            return result;

        }
        public static List<MODELS.MOD_Mass> list() /*查询转化table为list*/
        {
            string strcon = "select * from [dbo].[MassOrganizaitions]";
            DataTable dataTable = UTILITY.MsSqlHelper.YFMsSqlHelper.Query(strcon).Tables[0];/* 查询table参数为0*/
            return daTolist(dataTable);

        }

        public static List<MODELS.MOD_Mass> daTolist(DataTable dataTable)///转化类型
        {
            List<MOD_Mass> list = new List<MOD_Mass>();

            for (int i = 0; i < dataTable.Rows.Count; i++)
            {
                MODELS.MOD_Mass mass = new MOD_Mass();

                mass.Mo_id = int.Parse(dataTable.Rows[i]["Mo_id"].ToString());
                mass.Mo_name = dataTable.Rows[i]["Mo_name"].ToString();
                mass.Mo_place = dataTable.Rows[i]["Mo_place"].ToString();

                mass.Mo_members = dataTable.Rows[i]["Mo_members"].ToString();
                //MODELS.MOD_Menu menu = new MOD_Menu(); ///获取id
                //menu = DAL.DAL_Menu.GetMenu(int.Parse(dataTable.Rows[i]["menu"].ToString()));///获得所有属性
                //actives.Menu = menu;////从对象获得id

                mass.Mo_more = dataTable.Rows[i]["Mo_more"].ToString();
                mass.Mo_type = dataTable.Rows[i]["MO_type"].ToString();
                mass.Create_time1 = DateTime.Parse(dataTable.Rows[i]["Create_time"].ToString());
                mass.Update_time1 = DateTime.Parse(dataTable.Rows[i]["Update_time"].ToString());
                

                list.Add(mass);
            }

            return list;
        }

        public static bool del(int id)///根据id来删除
        {
            bool result = false;
            string strcon = "delete  from [dbo].[MassOrganizaitions] where Mo_id =" + id + "";

            int i = UTILITY.MsSqlHelper.YFMsSqlHelper.ExecuteSql(strcon);///执行
            if (i > 0)
            {
                result = true;
            }
            return result;

        }
        public static bool update(MODELS.MOD_Mass mass)
        {
            bool result = false;
            string strcon = "update [dbo].[MassOrganizaitions] set mo_name='" + mass.Mo_name + "',mo_type=" + mass.Mo_type + ", mo_more='" + mass.Mo_more + "',mo_type=" + mass.Mo_type + "where id='" + mass.Mo_id + "'";///int 与数字不加'' 字符串
            int i = UTILITY.MsSqlHelper.YFMsSqlHelper.ExecuteSql(strcon);/*返回受影响行数*/
            if (i > 0)
            {
                result = true;
            }
            return result;


        }

    }
}
