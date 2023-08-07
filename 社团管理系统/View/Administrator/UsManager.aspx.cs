using System;

namespace 社团管理系统.View.Administrator
{
    public partial class UsManager : System.Web.UI.Page
    {
        Models.Function Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Function();
            showactives();

        }
        private void showactives()
        {
            string Query = "select name ,id , pwd from [dbo].[login]";
            GridView1.DataSource = Con.GetData(Query);
            GridView1.DataBind();
            GridView1.HeaderRow.Cells[1].Text = "名称";
            GridView1.HeaderRow.Cells[2].Text = "账号";
            GridView1.HeaderRow.Cells[3].Text = "密码";

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
                    //string ME_number = numbertb.Value;
                    //string ME_email = emailtb.Value;
                    //string ME_grade = gradetb.Value;

                    //string AC_place = PlaceCb.SelectedIndex.ToString();
                    string Query = "insert into[dbo].[login](name,id, pwd)values('{0}','{1}','{2}')";/*,'{3}'*/
                    Query = string.Format(Query, ME_id, ME_name, ME_gender);/*,AC_plarce*/
                    Con.SetData(Query);
                    showactives();
                    ErrMsg.Text = "添加成功";
                    fristtb.Value = "";
                    secondtb.Value = "";
                    enddatetb.Value = "";
                    //numbertb.Value = "";
                    //emailtb.Value = "";
                    //gradetb.Value = "";
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
                    
                    //string AC_place = PlaceCb.SelectedIndex.ToString();
                    string Query = "update[dbo].[login] set id ='{1}', pwd ='{2}' where ME_id ='{0}'";/*,'{3}'*/
                    Query = string.Format(Query, ME_id, ME_name, ME_gender,  GridView1.SelectedRow.Cells[1].Text);/*,AC_place*/
                    Con.SetData(Query);
                    showactives();
                    ErrMsg.Text = "修改成功";
                    fristtb.Value = "";
                    secondtb.Value = "";
                    enddatetb.Value = "";
         
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
                    string Query = "delete from [dbo].[login]where id ={0} ";/*,'{3}'*/
                    Query = string.Format(Query, GridView1.SelectedRow.Cells[1].Text);/*,AC_place*/
                    Con.SetData(Query);
                    showactives();
                    ErrMsg.Text = "删除成功";
                    fristtb.Value = "";
                    secondtb.Value = "";
                    enddatetb.Value = "";
                 
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
          
            //PlaceCb.SelectedItem.Value = GridView1.SelectedRow.Cells[3].Text;

            if (fristtb.Value == "")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(GridView1.SelectedRow.Cells[2].Text);
            }
        }
    }
}