using System;

namespace 社团管理系统.View.Administrator.Others
{
    public partial class OtMoInformation : System.Web.UI.Page
    {

        Models.Function Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Function();
            showactives();

        }
        private void showactives()
        {
            string Query = "select MO_id,MO_name,MO_cover,MO_type,PR_name from [dbo].[MassOrganizaitions]";
            GridView1.DataSource = Con.GetData(Query);
            GridView1.DataBind();
            //GridView1.HeaderRow.Cells[1].Text = "活动编号";
            //GridView1.HeaderRow.Cells[2].Text = "活动名称";
            //GridView1.HeaderRow.Cells[3].Text = "活动开始时间";
            //GridView1.HeaderRow.Cells[4].Text = "活动结束时间";
            //GridView1.HeaderRow.Cells[5].Text = "参加人数";
            //GridView1.HeaderRow.Cells[6].Text = "活动地点";
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (idcb.Value == "" || namecb.Value == "" /*|| PlaceCb.SelectedIndex == -1*/)
                {
                    ErrMsg.Text = "信息缺失";
                }
                else
                {
                    string MO_id = idcb.Value;
                    string MO_name = namecb.Value;
                    string MO_cover = decb.Value;
                    string MO_type = typecb.Value;
                    string PR_name = prcb.Value;

                    //string AC_place = PlaceCb.SelectedIndex.ToString();
                    string Query = "insert into [dbo].[MassOrganizaitions] (MO_id,MO_name,MO_cover,MO_type,PR_name)values('{0}','{1}','{2}','{3}','{4}')";/*,'{3}'*/
                    Query = string.Format(Query, MO_id, MO_name, MO_cover, MO_type, PR_name);/*,AC_plarce*/
                    Con.SetData(Query);
                    showactives();
                    ErrMsg.Text = "已添加";
                    idcb.Value = "";
                    namecb.Value = "";
                    decb.Value = "";
                    typecb.Value = "";
                    //PlaceCb.SelectedIndex = -1;


                }

            }
            catch (Exception Ex)
            {
                ErrMsg.Text = Ex.Message;
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            try
            {
                if (idcb.Value == "" || namecb.Value == "" /*|| PlaceCb.SelectedIndex == -1*/)
                {
                    ErrMsg.Text = "信息缺失";
                }
                else
                {
                    string MO_id = idcb.Value;
                    string MO_name = namecb.Value;
                    string MO_cover = decb.Value;
                    string MO_type = typecb.Value;
                    string PR_name = prcb.Value;

                    //string AC_place = PlaceCb.SelectedIndex.ToString();
                    string Query = "update [dbo].[MassOrganizaitions] set MO_id='{0}',MO_name='{1}',MO_cover='{2}',MO_type='{3}',PR_name='{4}' where Mo_id='{5}'";/*,'{3}'*/
                    Query = string.Format(Query, MO_id, MO_name, MO_cover, MO_type, PR_name, GridView1.SelectedRow.Cells[1].Text);/*,AC_plarce*/
                    Con.SetData(Query);
                    showactives();
                    ErrMsg.Text = "修改成功";
                    idcb.Value = "";
                    namecb.Value = "";
                    decb.Value = "";
                    typecb.Value = "";
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
                if (idcb.Value == "" || namecb.Value == "" /*|| PlaceCb.SelectedIndex == -1*/)
                {
                    ErrMsg.Text = "信息缺失";
                }
                else
                {
                    string MO_id = idcb.Value;
                    string MO_name = namecb.Value;
                    string MO_cover = decb.Value;
                    string MO_type = typecb.Value;
                    string PR_name = prcb.Value;

                    //string AC_place = PlaceCb.SelectedIndex.ToString();
                    string Query = "delete from [dbo].[MassOrganizaitions]   where ME_id ={0} ";/*,'{3}'*/
                    Query = string.Format(Query, GridView1.SelectedRow.Cells[1].Text);/*,AC_plarce*/
                    Con.SetData(Query);
                    showactives();
                    ErrMsg.Text = "删除成功";
                    idcb.Value = "";
                    namecb.Value = "";
                    decb.Value = "";
                    typecb.Value = "";
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
            idcb.Value = GridView1.SelectedRow.Cells[1].Text;
            namecb.Value = GridView1.SelectedRow.Cells[2].Text;
            typecb.Value = GridView1.SelectedRow.Cells[3].Text;
            prcb.Value = GridView1.SelectedRow.Cells[4].Text;
            decb.Value = GridView1.SelectedRow.Cells[5].Text;

            //PlaceCb.SelectedItem.Value = GridView1.SelectedRow.Cells[3].Text;

            if (idcb.Value == "")
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
