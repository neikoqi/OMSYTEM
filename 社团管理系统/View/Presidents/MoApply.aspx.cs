using System;

namespace 社团管理系统.View.Management
{
    public partial class MoInformation : System.Web.UI.Page
    {
        Models.Function Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Function();
            showactives();
        }

        private void showactives()
        {
            string Query = "select ME_id , ME_name , ME_gender ,ME_number,ME_email,ME_grade from [dbo].[Membership_application] ";
            GridView1.DataSource = Con.GetData(Query);
            GridView1.DataBind();
            GridView1.HeaderRow.Cells[1].Text = "成员账号";
            GridView1.HeaderRow.Cells[2].Text = "成员名称";
            GridView1.HeaderRow.Cells[3].Text = "性别";
            GridView1.HeaderRow.Cells[4].Text = "电话号码";
            GridView1.HeaderRow.Cells[5].Text = "邮箱";
            GridView1.HeaderRow.Cells[6].Text = "班级";
        }
#pragma warning disable CS0414 // 字段“MoInformation.key”已被赋值，但从未使用过它的值
        int key = 0;
#pragma warning restore CS0414 // 字段“MoInformation.key”已被赋值，但从未使用过它的值
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void edit(object sender, EventArgs e)
        {
            try
            {
                if (GridView1.SelectedIndex == -1)
                {
                    ErrMsg.Text = "选择一行审核";
                }
                else
                {


                    string Query = "delete from [dbo].[Members]  where ME_id ={0} ";
                    Query = string.Format(Query, GridView1.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    showactives();
                    ErrMsg.Text = "审核成功";




                }

            }
            catch (Exception Ex)
            {
                ErrMsg.Text = Ex.Message;
            }
        }

        protected void delete(object sender, EventArgs e)
        {

            try
            {
                if (GridView1.SelectedIndex == -1)
                {
                    ErrMsg.Text = "选择一行删除";
                }
                else
                {

                    //string AC_place = PlaceCb.SelectedIndex.ToString();
                    string Query = "delete from [dbo].[Members]  where ME_id ={0} ";/*,'{3}'*/
                    Query = string.Format(Query, GridView1.SelectedRow.Cells[1].Text);/*,AC_place*/
                    Con.SetData(Query);
                    showactives();
                    ErrMsg.Text = "拒绝成功";




                }

            }
            catch (Exception Ex)
            {
                ErrMsg.Text = Ex.Message;
            }
        }
    }
}