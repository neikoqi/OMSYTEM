using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 社团管理系统.View.User
{
    public partial class MassView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            int id = int.Parse(Request.QueryString["id"].ToString());
            MODELS.MOD_Mass mass = BLL.BLL_Mass.GetForum(id);
            this.title.Text = mass.Mo_name.ToString();
            this.menu.Text = mass.Create_time1.ToString();
            this.date.Text = mass.Mo_type;
            this.more.Text = mass.Mo_more;
        }
    }
}