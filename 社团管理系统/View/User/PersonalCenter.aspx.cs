using System;

namespace 社团管理系统.View.User
{
    public partial class PersonalCenter : System.Web.UI.Page
    {
        Models.Function Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Function();
            showactives();

        }

        private void showactives()
        {
#pragma warning disable CS0219 // 变量“Query”已被赋值，但从未使用过它的值
            string Query = "select ME_id , ME_name , ME_gender ,ME_number,ME_email,ME_grade from [dbo].[Members] ";
#pragma warning restore CS0219 // 变量“Query”已被赋值，但从未使用过它的值
            //GridView1.DataSource = Con.GetData(Query);
            //GridView1.DataBind();
            //GridView1.HeaderRow.Cells[1].Text = "成员账号";
            //GridView1.HeaderRow.Cells[2].Text = "成员名称";
            //GridView1.HeaderRow.Cells[3].Text = "性别";
            //GridView1.HeaderRow.Cells[4].Text = "电话号码";
            //GridView1.HeaderRow.Cells[5].Text = "邮箱";
            //GridView1.HeaderRow.Cells[6].Text = "班级";
        }



        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Fristpage.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            try
            {
                if (idcb.Value != "" || namecb.Value != "" /*|| PlaceCb.SelectedIndex == -1*/)
                {
                    ErrMsg.Text = "请完善信息";

                }
                else
                {
                    string ME_id = idcb.Value;
                    string ME_name = namecb.Value;
                    string ME_gender = sexcb.Value;
                    string ME_number = numbercb.Value;
                    string ME_email = emailcb.Value;
                    string ME_grade = gradecb.Value;

                    //string AC_place = PlaceCb.SelectedIndex.ToString();
                    string Query = "insert into [dbo].[Members](ME_id, ME_name, ME_gender, ME_number, ME_email, ME_grade)values('{0}','{1}','{2}','{3}','{4}','{5}')";/*,'{3}'*/
                    Query = string.Format(Query, ME_id, ME_name, ME_gender, ME_number, ME_email, ME_grade);/*,AC_plarce*/
                    Con.SetData(Query);
                    showactives();
                    ErrMsg.Text = "已提交申请";
                    idcb.Value = "";
                    namecb.Value = "";
                    sexcb.Value = "";
                    numbercb.Value = "";
                    emailcb.Value = "";
                    gradecb.Value = "";
                    //PlaceCb.SelectedIndex = -1;


                }

            }
            catch (Exception Ex)
            {
                ErrMsg.Text = Ex.Message;
            }
        }

    }
}

