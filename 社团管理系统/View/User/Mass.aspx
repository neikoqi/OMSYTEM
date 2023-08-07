<%@ Page Title="" Language="C#" MasterPageFile="~/View/User/User.Master" AutoEventWireup="true" CodeBehind="Mass.aspx.cs" Inherits="社团管理系统.View.User.Mass" %>
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
        <td>编号</td>
        <td>社团名称</td>
        <td>社团类型</td>
        <td>建立时间</td>
        <td>简介</td>
        <td>场地</td>
        <td>公告</td>  
        <td>人数</td>
       
       
        <td>详情</td>
     <td>信息更新时间</td>
    </tr >
    <%
        //string id = Request.QueryString["id"];/*获取当前删除的id*/
        //if(id!=null)
        //{
        //    BLL.BLL_Forum.del(int.Parse(id));
        //    UTILITY.JsHelper.AlertAndParentUrl("删除成功", "ForumView.aspx");
        //}
        List<MODELS.MOD_Mass> list = BLL.BLL_Mass.list(); /*前台调用业务层bll*/
        for (int i = 0; i < list.Count; i++)
        {
 %>      
        
   <tr algin="center">
        <td><%=list[i].Mo_id %></td>
        <td><%=list[i].Mo_name %></td>
        <td><%=list[i].Mo_type %></td>
        <td><%=list[i].Create_time1 %></td>
        <td><%=list[i].Mo_notice %></td>
        <td><%=list[i].Mo_place %></td>
       
        <td><%=list[i].Mo_information %></td>
       
        <td><%=list[i].Mo_members %></td>
       <td><%=list[i].Mo_more %></td>
        <td><%=list[i].Update_time1 %></td>
        <td><a href="MassView.aspx?id=<%=list[i].Mo_id %>">查看</a></td>
     
    </tr>   
    <%} %>  
</table>
</div>

</asp:Content>
