using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
namespace 社团管理系统.View.User
{
    public partial class ForumView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            int id = int.Parse(Request.QueryString["id"].ToString());
            MODELS.MOD_Comment forum = BLL.BLL_Comment.GetForum(id);
            this.title.Text = forum.Name;
            this.date.Text = forum.Date.ToString();
            this.more.Text = forum.More;
        }
    }
}