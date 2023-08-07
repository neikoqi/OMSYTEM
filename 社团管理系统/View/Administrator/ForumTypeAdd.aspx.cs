using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MODELS;

namespace 社团管理系统.View.Administrator
{
    public partial class ForumTypeAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MODELS.MOD_Menu menu = new MOD_Menu();
            menu.Title = this.title.Text;
            menu.State = int.Parse(this.state.Text); /*前台获取代码*/
            if (BLL.BLL_Menu.add(menu) && title.Text != "") /*业务层添加数据*/ /*业务层会调用数据库层*/
            {
                UTILITY.JsHelper.AlertAndParentUrl("添加成功", "ForumType.aspx");/*该方法有两个参数*/
            }
            else
            {
                UTILITY.JsHelper.AlertAndParentUrl("添加失败,请检查信息是否填写完整", "ForumType.aspx");
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}