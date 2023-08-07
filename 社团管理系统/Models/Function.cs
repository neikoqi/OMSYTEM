using System.Data;
using System.Data.SqlClient;

namespace 社团管理系统.Models
{
    public class Function
    {
        private SqlCommand com;
        private SqlConnection con;
        private SqlDataAdapter sda;
        //private DataTable dt;
        private string constr;

        public Function()
        {
            constr = "Data Source=DESKTOP-7O5IA5E\\SQLEXPRESS;Initial Catalog=MassOrganizaitions;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            con = new SqlConnection(constr);
            com = new SqlCommand();
            com.Connection = con;

        }

        public DataTable GetData(string Query)
        {
            DataTable dt = new DataTable();
            sda = new SqlDataAdapter(Query, constr);
            sda.Fill(dt);
            return dt;
        }

        public int SetData(string Query)
        {
            int cnt = 0;
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            com.CommandText = Query;
            cnt = com.ExecuteNonQuery();
            con.Close();
            return cnt;
        }


    }

}

