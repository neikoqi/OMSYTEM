using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 社团管理系统.View.User
{
    public partial class ActivesView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"].ToString());
            MODELS.MOD_Actives actives = BLL.BLL_Actives.GetForum(id);
            this.title.Text = actives.Name;
            this.menu.Text = actives.AC_timePublish1.ToString();
            this.date.Text = actives.AC_type1;
            this.more.Text = actives.More;
        }
    }
}