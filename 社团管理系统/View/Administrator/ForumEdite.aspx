<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForumEdite.aspx.cs" Inherits="社团管理系统.View.Administrator.ForumEdite" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 767px;
            height: 139px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" action="inco/ForumEdite.ashx">
        <div>
             <%
                int id = int.Parse(Request.QueryString["id"].ToString());
                MODELS.MOD_Forum forum = BLL.BLL_Forum.GetForum(id);

                %>
            <table boder="1" width="100%" algin="center">
                <tr><td>公告标题</td><td>
                    <input id="title" type="text" name="title" value="<%=forum.Title %> "/></td></tr>
                <tr><td>公告类别</td><td>
                    <select id="menu" name="menu">
                        <%List<MODELS.MOD_Menu> list = BLL.BLL_Menu.list();
                            for (int i = 0; i < list.Count; i++)
                            {
                            %>
                        <option value="<%=list[i].Id %>"> <%=list[i].Title %></option>
                       <%} %>
                    </select></td></tr>
                <tr><td>公告内容</td><td>
                    <textarea id="more" name="more" class="auto-style1"><%=forum.More %></textarea></td></tr>
                <tr><td>公告状态</td><td>
                    <select id="state" name="state">
                        <option value="1"> 正常</option>
                        <option value="0"> 关闭</option>
                    </select></td></tr>
                <tr><td></td><td>
                    <input  id="id" type="hidden" name="id" value="<%=forum.Id %>"/>
                    <input id="update" type="submit" value="修改" /></td></tr>
            </table>
        </div>

        <script type="text/javascript">
            document.getElementById("menu").value =<% = forum.Menu.Id%>;
            document.getElementById("state").value =<% = forum.State%>;
        </script>
    </form>
</body>
</html>