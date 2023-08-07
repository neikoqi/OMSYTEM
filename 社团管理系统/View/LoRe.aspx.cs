using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
namespace 社团管理系统.View.User
{
    public partial class LoRe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (emtb.Value != "" && patb.Value != "") 
            {
                string sql = string.Format("select * from [dbo].[login] where id='{0}'and pwd ='{1}' ", emtb.Value, patb.Value);///读取数据库中的账号与密码

                SqlDataReader da = Models.LINQ.sqld(sql);///编译阅读

                if (da.HasRows)///如果得到的的值为真
                {
                    Response.Write("<Script> alert('登陆成功喵') </script> ");
                    Response.Redirect("User/Fristpage.aspx");
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
        protected void Button2_Click(object sender, EventArgs e)
        {
            string strCon = "Data Source=DESKTOP-7O5IA5E\\SQLEXPRESS;Initial Catalog=MassOrganizaitions;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            /////创建链接
            if (Ematb.Value != "" )
            {
                string sql = string.Format("select * from [dbo].[login] where id='{0}'", Ematb);
                SqlDataReader da = Models.LINQ.sqld(sql);
                if (da.HasRows)
                {
                    Response.Write("<Script> alert('账号已被注册喵,再另外注册一个吧~') </script> ");///判断账号是否被注册
                }
                else
                {

                    string strCmd = "insert into [dbo].[User](id,pwd,name) values('" + Ematb.Value + "','" + Pastb.Value + "','" + Pastb.Value + "')";///账号未被注册，把账号密码写入数据库

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
    }
    }
