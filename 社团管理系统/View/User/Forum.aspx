<%@ Page Title="" Language="C#" MasterPageFile="~/View/User/User.Master" AutoEventWireup="true" CodeBehind="Forum.aspx.cs" Inherits="社团管理系统.View.User.Forum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<style>
.pos{
      position:absolute;
            top:50px;
            left:0px;
            right:0px;
            width:100%;
}
</style>
    <div class="pos">
<table boder="1" width="100%" algin="center" >
    <tr algin="center">
     <%--   <td>编号</td>--%>
 <%--       <td>标题</td>
        <td>类别</td>
        <td>状态</td>
        <td>日期</td>
        <td>操作</td>--%>
     
    </tr >
    <%
        //string id = Request.QueryString["id"];/*获取当前删除的id*/
        //if(id!=null)
        //{
        //    BLL.BLL_Forum.del(int.Parse(id));
        //    UTILITY.JsHelper.AlertAndParentUrl("删除成功", "ForumView.aspx");
        //}
        List<MODELS.MOD_Comment> list = BLL.BLL_Comment.list(); /*前台调用业务层bll*/
        for (int i = 0; i < list.Count; i++)
        {
 %>      
        
   <tr algin="center">
      <%--  <td> <%=list[i].Id %></td>--%>
        <td><%=list[i].Name %></td>
        <td><%=list[i].Date %></td>
      <%--  <td><%=list[i].Menu.Title %></td>--%>
        <td><%=list[i].More %></td>
      
        <td><a href="ForumView.aspx?id=<%=list[i].Id %>">查看</a></td>
     
    </tr>   
    <%} %>  
</table>
 

</div>
</asp:Content>
