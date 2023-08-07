using System;
using System.Data.SqlClient;

namespace 社团管理系统.View
{
    public partial class login : System.Web.UI.Page
    {
        //Models.Function con;
        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    con = new Models.Function();
        //}
        //public static /*string User ="";*/
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtName.Text != "" && txtPwd.Text != "")
            {
                string sql = string.Format("select * from [dbo].[User] where ST_id='{0}'and ST_pwd ='{1}' ", txtName.Text, txtPwd.Text);///读取数据库中的账号与密码

                SqlDataReader da = Models.LINQ.sqld(sql);///编译阅读

                if (da.HasRows)///如果得到的的值为真
                {
                    Response.Write("<Script> alert('登陆成功喵') </script> ");
                    Response.Redirect("Administrator/Chart.aspx");
                    /*Response.Write(" <script> window.open( 'User/Fristpage.aspx'); </script> ");*////如果登陆成功，会对当前页面进行跳转，跳转为喵喵教主页
                }
                else
                {
                    Response.Write("<Script> alert('登陆失败，请重新填写喵') </script> ");
                }
            }
            else
            {
                Response.Write("<Script> alert('账户密码不能为空喵') </script> ");

            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            txtPwd.Text = txtName.Text = txtPwd.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }


    }
}
