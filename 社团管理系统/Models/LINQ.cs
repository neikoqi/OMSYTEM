using System.Data;
using System.Data.SqlClient;
namespace 社团管理系统.Models
{
    public class LINQ

    {
        //数据库链接
        public static string sql = "Data Source=DESKTOP-7O5IA5E\\SQLEXPRESS;Initial Catalog=MassOrganizaitions;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";

        public static SqlConnection sqlcon;


        public static void sqln()
        {
            //链接状态判断
            sqlcon = new SqlConnection(sql);
            if (sqlcon.State == ConnectionState.Broken)
            {
                sqlcon.Open();
                sqlcon.Close();
            }
            else if (sqlcon.State == ConnectionState.Closed)
            {
                sqlcon.Open();
            }
        }
        public static SqlDataReader sqld(string sql)
        {
            sqln();
            SqlCommand sqlcom = new SqlCommand(sql, sqlcon);
            SqlDataReader sqlData = sqlcom.ExecuteReader();
            return sqlData;
        }


    }
}