using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MODELS;
using DAL;
using BLL;
namespace 社团管理系统.View.Administrator
{
    public partial class Forum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"].ToString());
            MODELS.MOD_Forum forum = BLL.BLL_Forum.GetForum(id);
            this.title.Text = forum.Title;
            this.menu.Text = forum.Menu.Title;
            this.date.Text = forum.Adddate.ToString();
            this.more.Text = forum.More;
        }
    }
}