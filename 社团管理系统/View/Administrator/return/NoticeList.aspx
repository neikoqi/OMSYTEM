<%@ Page Title="" Language="C#" MasterPageFile="~/View/Administrator/Administrator.Master" AutoEventWireup="true" CodeBehind="NoticeList.aspx.cs" Inherits="社团管理系统.View.Administrator.NoticeL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table boder="1" width="100%" algin="center">
    <tr algin="center">
        <td>编号</td>
        <td>标题</td>
        <td>类别</td>
        <td>状态</td>
        <td>日期</td>
        <td>操作</td>
     
    </tr >
    <%
            string id = Request.QueryString["id"];/*获取当前删除的id*/
            if(id!=null)
            {
                BLL.BLL_Forum.del(int.Parse(id));
                UTILITY.JsHelper.AlertAndParentUrl("删除成功", "Forum_List.aspx");
            }
            List<MODELS.MOD_Forum> list = BLL.BLL_Forum.list(); /*前台调用业务层bll*/
            for (int i = 0; i < list.Count; i++)
            {
 %>      
        
   <tr algin="center">
        <td><%=list[i].Id %></td>
        <td><%=list[i].Title %></td>
        <td><%=list[i].Menu.Title %></td>
        <td><%=list[i].State %></td>
        <td><%=list[i].Adddate %></td>
        <td><a href="Forum_List.aspx?id=<%=list[i].Id %>">删除</a>|<a href="Forum.aspx?id=<%=list[i].Id %>">查看</a>|<a href="ForumEdite.aspx?id=<%=list[i].Id %>">修改</a></td>
     
    </tr>   
    <%} %>  
</table>

</asp:Content>
