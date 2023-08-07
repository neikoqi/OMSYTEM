<%@ Page Title="" Language="C#" MasterPageFile="~/View/User/User.Master" AutoEventWireup="true" CodeBehind="MoActivities.aspx.cs" Inherits="社团管理系统.View.User.Activities" %>
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
        <td>活动名称</td>
        <td>活动类型</td>
        <td>开始时间</td>
        <td>结束时间</td>
        <td>场地</td>
           <td>人数</td>
        <td>活动发布日期</td>
        <td>报名截至</td>
        <td>详情</td>
     
    </tr >
    <%
        //string id = Request.QueryString["id"];/*获取当前删除的id*/
        //if(id!=null)
        //{
        //    BLL.BLL_Forum.del(int.Parse(id));
        //    UTILITY.JsHelper.AlertAndParentUrl("删除成功", "ForumView.aspx");
        //}
        List<MODELS.MOD_Actives> list = BLL.BLL_Actives.list(); /*前台调用业务层bll*/
        for (int i = 0; i < list.Count; i++)
        {
 %>      
        
   <tr algin="center">
        <td><%=list[i].Id %></td>
        <td><%=list[i].Name %></td>
        <td><%=list[i].AC_type1 %></td>
        <td><%=list[i].AC_timeBegin1 %></td>
        <td><%=list[i].AC_timeOver1 %></td>
        <td><%=list[i].AC_place1 %></td>
        <td><%=list[i].AC_numbers1 %></td>
        <td><%=list[i].AC_timePublish1 %></td>
        <td><%=list[i].AC_timeApplicationOver1 %></td>
        <td><%=list[i].More %></td>

        <td><a href="ActivesView.aspx?id=<%=list[i].Id %>">查看</a></td>
     
    </tr>   
    <%} %>  
</table>
</div>
</asp:Content>
