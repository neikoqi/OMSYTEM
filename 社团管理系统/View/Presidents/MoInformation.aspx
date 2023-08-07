<%@ Page Title="" Language="C#" MasterPageFile="~/View/Presidents/Presidents.Master" AutoEventWireup="true" CodeBehind="MoInformation.aspx.cs" Inherits="社团管理系统.View.Management.MoInformation1" %>
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
                BLL.BLL_Mass.del(int.Parse(id));
                UTILITY.JsHelper.AlertAndParentUrl("删除成功", "Forum_List.aspx");
            }
            List<MODELS.MOD_Mass> list = BLL.BLL_Mass.list(); /*前台调用业务层bll*/
            for (int i = 0; i < list.Count; i++)
            {
 %>      
        
   <tr algin="center">
        <td><%=list[i].Mo_id%></td>
        <td><%=list[i].Mo_name %></td>
        <td><%=list[i].Mo_type%></td>
        <td><%=list[i].Mo_notice %></td>
        <td><%=list[i].Mo_more %></td>
        <td><a href="Forum.aspx?id=<%=list[i].Mo_id %>">查看</a>|<a href="ForumEdite.aspx?id=<%=list[i].Mo_id %>">修改</a>|<a href="Forum_List.aspx?id=<%=list[i].Mo_id %>">删除</a></td>
     
    </tr>   
    <%} %>  
</table>



</asp:Content>
