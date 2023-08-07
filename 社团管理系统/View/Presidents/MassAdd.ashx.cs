using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MODELS;
namespace 社团管理系统.View.Presidents
{
    /// <summary>
    /// MassAdd 的摘要说明
    /// </summary>
    public class MassAdd : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/html";
            string name = context.Request["name"].Trim();
            string more = context.Request["more"].Trim();
            string type = context.Request["type"].Trim();
            string ifo = context.Request["ifo"].Trim();
            string place = context.Request["place"].Trim();
            string numbers = context.Request["numbers"].Trim();

            MODELS.MOD_Mass forum = new MOD_Mass();
            forum.Mo_name = name;
            //MODELS.MOD_Menu Fmenu = new MOD_Menu(); ///获取id
            //Fmenu.Id = int.Parse(menu);
            //forum.Menu = Fmenu;////从对象获得id


            forum.Mo_more = more;
            forum.Mo_type = type;
            forum.Mo_information = ifo;
            forum.Mo_place = place;
            forum.Mo_members = numbers;
            forum.Create_time1 = DateTime.Now;
            forum.Update_time1 = DateTime.Now;
            if (BLL.BLL_Mass.add(forum))
            {
                UTILITY.JsHelper.AlertAndParentUrl("添加成功", "../MassList.aspx");
                //context.Response.Write("成功");
            }
            else
            {
                //UTILITY.JsHelper.AlertAndParentUrl("删除成功", "Forum_List.aspx");
                context.Response.Write("失败");
            }
        }
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}