<%@ Page Title="" Language="C#" MasterPageFile="~/View/Administrator/Administrator.Master" AutoEventWireup="true" CodeBehind="ForumType.aspx.cs" Inherits="社团管理系统.View.Administrator.MoType" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="1" align="center" width="100%">
        <tr><td>编号</td><td>类型</td><td>状态</td><td>操作</td></tr>
        <%
            string id = Request.QueryString["id"];/*获取当前删除的id*/
            if(id!=null)
            {
                BLL.BLL_Menu.del(int.Parse(id));
                UTILITY.JsHelper.AlertAndParentUrl("删除成功", "ForumType.aspx");
            }
            List<MODELS.MOD_Menu> list = BLL.BLL_Menu.list(); /*前台调用业务层bll*/
            for (int i = 0; i < list.Count; i++)
            {
 %>      
        <tr ><td><%=list[i].Id %></td><td><%=list[i].Title %></td><td><%=list[i].State %></td><td><a href="ForumType.aspx?id=<%=list[i].Id %>">删除</a></td></tr>
        <%} %>  
    </table>

<a href="ForumTypeAdd.aspx">添加类型</a>
</asp:Content>
