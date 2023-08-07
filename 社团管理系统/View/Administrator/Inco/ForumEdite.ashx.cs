using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MODELS;

namespace 社团管理系统.View.Administrator.Inco
{
    /// <summary>
    /// ForumEdite 的摘要说明
    /// </summary>
    public class ForumEdite : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/html";

            //string id = context.Request["id"].Trim();
            string title = context.Request["title"].Trim();
            string menu = context.Request["menu"].Trim();
            string more = context.Request["more"].Trim();
            string state = context.Request["state"].Trim();


            MODELS.MOD_Forum forum = new MOD_Forum();
            forum.Title = title;
            forum.Id = int.Parse(menu);
            MODELS.MOD_Menu Fmenu = new MOD_Menu(); ///获取id
            Fmenu.Id = int.Parse(menu);
            forum.Menu = Fmenu;////从对象获得id
            forum.More = more;
            forum.State = int.Parse(state);
           

            if (BLL.BLL_Forum.update(forum))
            {
                UTILITY.JsHelper.AlertAndParentUrl("修改成功", "../Forum_List.aspx");
                //context.Response.Write("成功");
            }
            else
            {
                //UTILITY.JsHelper.AlertAndParentUrl("更新失败", "../Forum_add.ashx");
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