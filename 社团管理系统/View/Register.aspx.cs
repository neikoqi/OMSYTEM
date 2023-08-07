using System;
using System.Data.SqlClient;

namespace 社团管理系统.View
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Re_bt_Click(object sender, EventArgs e)
        {
            string strCon = "Data Source=DESKTOP-7O5IA5E\\SQLEXPRESS;Initial Catalog=MassOrganizaitions;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            /////创建链接
            if (txtUser.Text != "" && txtPwd.Text != "" && Txtpwd2.Text != "")
            {
                string sql = string.Format("select * from [dbo].[User] where ST_id='{0}'  ", txtUser.Text);
                SqlDataReader da = Models.LINQ.sqld(sql);
                if (da.HasRows)
                {
                    Response.Write("<Script> alert('账号已被注册喵,再另外注册一个吧~') </script> ");///判断账号是否被注册
                }
                else
                {

                    string strCmd = "insert into [dbo].[User](ST_id,ST_pwd) values('" + txtUser.Text + "','" + txtPwd.Text + "')";///账号未被注册，把账号密码写入数据库

                    SqlConnection conn = new SqlConnection(strCon);///链接
                    SqlCommand cmd = new SqlCommand(strCmd, conn);
                    conn.Open();
                    cmd.ExecuteNonQuery();

                    Response.Write("<Script>alert('注册成功喵')</script>");

                    conn.Close();///关闭数据库链接
                }
            }
            else
            {
                Response.Write("<Script> alert('账户密码不能为空喵') </script> ");
            }

        }

        protected void Lo_bt_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void txtUser_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
