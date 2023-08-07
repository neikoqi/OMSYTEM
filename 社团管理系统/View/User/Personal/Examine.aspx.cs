using System;

namespace 社团管理系统.View.User.Personal
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Models.Function Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Function();
            showactives();

        }
        private void showactives()
        {
            string Query = "select ME_id , ME_name , ME_gender ,ME_number,ME_email,ME_grade from [dbo].[Members] where ME_id =20080395";
            GridView1.DataSource = Con.GetData(Query);
            GridView1.DataBind();
            //GridView1.HeaderRow.Cells[1].Text = "成员账号";
            //GridView1.HeaderRow.Cells[2].Text = "成员名称";
            //GridView1.HeaderRow.Cells[3].Text = "性别";
            //GridView1.HeaderRow.Cells[4].Text = "电话号码";
            //GridView1.HeaderRow.Cells[5].Text = "邮箱";
            //GridView1.HeaderRow.Cells[6].Text = "班级";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}