using System;

namespace 社团管理系统.View.Administrator
{
    public partial class UsMembera : System.Web.UI.Page
    {
        Models.Function Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Function();
            showactives();

        }
        private void showactives()
        {
            string Query = "select ME_id , ME_name , ME_gender ,ME_number,ME_email,ME_grade from [dbo].[Members] ";
            GridView1.DataSource = Con.GetData(Query);
            GridView1.DataBind();
            GridView1.HeaderRow.Cells[1].Text = "成员账号";
            GridView1.HeaderRow.Cells[2].Text = "成员名称";
            GridView1.HeaderRow.Cells[3].Text = "性别";
            GridView1.HeaderRow.Cells[4].Text = "电话号码";
            GridView1.HeaderRow.Cells[5].Text = "邮箱";
            GridView1.HeaderRow.Cells[6].Text = "班级";
        }
        protected void edit(object sender, EventArgs e)
        {
            try
            {
                if (fristtb.Value == "" || secondtb.Value == "" /*|| PlaceCb.SelectedIndex == -1*/)
                {
                    ErrMsg.Text = "信息缺失";

                }
                else
                {
                    string ME_id = fristtb.Value;
                    string ME_name = secondtb.Value;
                    string ME_gender = enddatetb.Value;
                    string ME_number = numbertb.Value;
                    string ME_email = emailtb.Value;
                    string ME_grade = gradetb.Value;

                    //string AC_place = PlaceCb.SelectedIndex.ToString();
                    string Query = "insert into [dbo].[Members](ME_id, ME_name, ME_gender, ME_number, ME_email, ME_grade)values('{0}','{1}','{2}','{3}','{4}','{5}')";/*,'{3}'*/
                    Query = string.Format(Query, ME_id, ME_name, ME_gender, ME_number, ME_email, ME_grade);/*,AC_plarce*/
                    Con.SetData(Query);
                    showactives();
                    ErrMsg.Text = "已发送申请";
                    fristtb.Value = "";
                    secondtb.Value = "";
                    enddatetb.Value = "";
                    numbertb.Value = "";
                    emailtb.Value = "";
                    gradetb.Value = "";
                    //PlaceCb.SelectedIndex = -1;


                }

            }
            catch (Exception Ex)
            {
                ErrMsg.Text = Ex.Message;
            }
        }

        protected void revise(object sender, EventArgs e)
        {
            try
            {
                if (fristtb.Value == "" || secondtb.Value == "" /*|| PlaceCb.SelectedIndex == -1*/)
                {
                    ErrMsg.Text = "信息缺失";
                }
                else
                {
                    string ME_id = fristtb.Value;
                    string ME_name = secondtb.Value;
                    string ME_gender = enddatetb.Value;
                    string ME_number = numbertb.Value;
                    string ME_email = emailtb.Value;
                    string ME_grade = gradetb.Value;
                    //string AC_place = PlaceCb.SelectedIndex.ToString();
                    string Query = "update [dbo].[Members] set ME_name ='{1}', ME_gender ='{2}', ME_number ='{3}', ME_email ='{4}', ME_grade ='{5}' where ME_id ='{0}'";/*,'{3}'*/
                    Query = string.Format(Query, ME_id, ME_name, ME_gender, ME_number, ME_email, ME_grade, GridView1.SelectedRow.Cells[1].Text);/*,AC_place*/
                    Con.SetData(Query);
                    showactives();
                    ErrMsg.Text = "修改成功";
                    fristtb.Value = "";
                    secondtb.Value = "";
                    enddatetb.Value = "";
                    numbertb.Value = "";
                    emailtb.Value = "";
                    gradetb.Value = "";
                    //PlaceCb.SelectedIndex = -1;


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
                if (fristtb.Value == "" /*|| secondtb.Value == ""*/ /*|| PlaceCb.SelectedIndex == -1*/)
                {
                    ErrMsg.Text = "选择一行删除";
                }
                else
                {
                    string name = fristtb.Value;
                    string AC_timeBegin = secondtb.Value;
                    //string AC_place = PlaceCb.SelectedIndex.ToString();
                    string Query = "delete from [dbo].[Members]  where ME_id ={0} ";/*,'{3}'*/
                    Query = string.Format(Query, GridView1.SelectedRow.Cells[1].Text);/*,AC_place*/
                    Con.SetData(Query);
                    showactives();
                    ErrMsg.Text = "删除成功";
                    fristtb.Value = "";
                    secondtb.Value = "";
                    enddatetb.Value = "";
                    numbertb.Value = "";
                    emailtb.Value = "";
                    gradetb.Value = "";
                    //PlaceCb.SelectedIndex = -1;


                }

            }
            catch (Exception Ex)
            {
                ErrMsg.Text = Ex.Message;
            }
        }
        int key = 0;
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {


            fristtb.Value = GridView1.SelectedRow.Cells[1].Text;
            secondtb.Value = GridView1.SelectedRow.Cells[2].Text;
            enddatetb.Value = GridView1.SelectedRow.Cells[3].Text;
            numbertb.Value = GridView1.SelectedRow.Cells[4].Text;
            emailtb.Value = GridView1.SelectedRow.Cells[5].Text;
            gradetb.Value = GridView1.SelectedRow.Cells[6].Text;

            //PlaceCb.SelectedItem.Value = GridView1.SelectedRow.Cells[3].Text;

            if (fristtb.Value == "")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text);
            }
        }
    }
}