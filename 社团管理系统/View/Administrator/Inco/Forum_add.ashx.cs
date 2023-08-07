using MODELS;
using System;
using System.Web;


namespace 社团管理系统.View.Administrator.Inco
{
    /// <summary>
    /// Forum_add 的摘要说明
    /// </summary>
    public class Forum_add : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/html";


            string title = context.Request["title"].Trim();
            string menu = context.Request["menu"].Trim();
            string more = context.Request["more"].Trim();
            string state = context.Request["state"].Trim();


            MODELS.MOD_Forum forum = new MOD_Forum();
            forum.Title = title;
            MODELS.MOD_Menu Fmenu = new MOD_Menu(); ///获取id
            Fmenu.Id = int.Parse(menu);
            forum.Menu = Fmenu;////从对象获得id


            forum.More = more;
            forum.State = int.Parse(state);
            forum.Adddate = DateTime.Now;

            if (BLL.BLL_Forum.add(forum))
            {
                UTILITY.JsHelper.AlertAndParentUrl("添加成功", "../Forum_List.aspx");
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