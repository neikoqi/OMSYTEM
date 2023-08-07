using System;

namespace 社团管理系统.View.Administrator.Others
{
    public partial class CoMoActivities : System.Web.UI.Page
    {
        Models.Function Con;

        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Function();
            showactives();

        }
        private void showactives()
        {
            string Query = "select id , name , AC_timeBegin ,AC_timeOver,AC_numbers,AC_place from [dbo].[Activities]";
            GridView1.DataSource = Con.GetData(Query);
            GridView1.DataBind();
            GridView1.HeaderRow.Cells[1].Text = "活动编号";
            GridView1.HeaderRow.Cells[2].Text = "活动名称";
            GridView1.HeaderRow.Cells[3].Text = "活动开始时间";
            GridView1.HeaderRow.Cells[4].Text = "活动结束时间";
            GridView1.HeaderRow.Cells[5].Text = "参加人数";
            GridView1.HeaderRow.Cells[6].Text = "活动地点";
        }
        protected void Button1_Click(object sender, EventArgs e)
        {


            try
            {
                if (fristtb.Value == "" || secondtb.Value == "" /*|| PlaceCb.SelectedIndex == -1*/)
                {
                    ErrMsg.Text = "信息缺失";
                }
                else
                {
                    string name = fristtb.Value;
                    string AC_timeBegin = secondtb.Value;
                    string AC_timeOver = enddatetb.Value;
                    string AC_place = placetb.Value;

                    //string AC_place = PlaceCb.SelectedIndex.ToString();
                    string Query = "insert into [dbo].[Activities] (name,AC_timeBegin,AC_timeOver,AC_place)values('{0}','{1}','{2}','{3}')";/*,'{3}'*/
                    Query = string.Format(Query, name, AC_timeBegin, AC_timeOver, AC_place);/*,AC_plarce*/
                    Con.SetData(Query);
                    showactives();
                    ErrMsg.Text = "已添加";
                    fristtb.Value = "";
                    secondtb.Value = "";
                    enddatetb.Value = "";
                    placetb.Value = "";
                    //PlaceCb.SelectedIndex = -1;


                }

            }
            catch (Exception Ex)
            {
                ErrMsg.Text = Ex.Message;
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }
        int key = 0;
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            fristtb.Value = GridView1.SelectedRow.Cells[2].Text;
            secondtb.Value = GridView1.SelectedRow.Cells[3].Text;
            enddatetb.Value = GridView1.SelectedRow.Cells[4].Text;
            placetb.Value = GridView1.SelectedRow.Cells[6].Text;

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

        protected void Button5_Click(object sender, EventArgs e)
        {

            try
            {
                if (fristtb.Value == "" || secondtb.Value == "" /*|| PlaceCb.SelectedIndex == -1*/)
                {
                    ErrMsg.Text = "信息缺失";
                }
                else
                {
                    string name = fristtb.Value;
                    string AC_timeBegin = secondtb.Value;
                    string AC_timeOver = enddatetb.Value;
                    string AC_place = placetb.Value;
                    //string AC_place = PlaceCb.SelectedIndex.ToString();
                    string Query = "update [dbo].[Activities]  set name='{0}',AC_timeBegin='{1}',AC_timeOver='{2}',AC_place='{3}' where id ='{4}' ";/*,'{3}'*/
                    Query = string.Format(Query, name, AC_timeBegin, AC_timeOver, AC_place, GridView1.SelectedRow.Cells[1].Text);/*,AC_place*/
                    Con.SetData(Query);
                    showactives();
                    ErrMsg.Text = "修改成功";
                    fristtb.Value = "";
                    secondtb.Value = "";
                    enddatetb.Value = "";
                    placetb.Value = "";
                    //PlaceCb.SelectedIndex = -1;


                }

            }
            catch (Exception Ex)
            {
                ErrMsg.Text = Ex.Message;
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
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
                    string Query = "delete from  [dbo].[Activities] where id ={0} ";/*,'{3}'*/
                    Query = string.Format(Query, GridView1.SelectedRow.Cells[1].Text);/*,AC_place*/
                    Con.SetData(Query);
                    showactives();
                    ErrMsg.Text = "删除成功";
                    fristtb.Value = "";
                    secondtb.Value = "";
                    enddatetb.Value = "";
                    placetb.Value = "";
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