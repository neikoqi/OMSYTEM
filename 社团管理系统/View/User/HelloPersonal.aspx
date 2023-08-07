<%@ Page Title="" Language="C#" MasterPageFile="~/View/User/User.Master" AutoEventWireup="true" CodeBehind="HelloPersonal.aspx.cs" Inherits="社团管理系统.View.User.HelloPersonal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style>
.top{
    position:absolute;
    top:50px;
    text-align:center;
}
    .auto-style1 {
        position: absolute;
        top: 149px;
        text-align: center;
        left: 1px;
        width: 144px;
        height: 278px;
    }
    .auto-style2 {
        height: 22px;
    }
    .auto-style3 {
        width: 108%;
        height: 272px;
    }
    .auto-style4 {
        width: 115px;
    }
    .auto-style5 {
        height: 22px;
        width: 115px;
    }
</style>
<div class="auto-style1">




    

    <table boder="1" algin="center" class="auto-style3">
 
    <%  List<MODELS.MOD_Mass> list = BLL.BLL_Mass.list();%>
        <tr algin="center"><td class="auto-style4"> 编号</td></tr>
         <tr><td class="auto-style5">标题</td> <td class="auto-style2"> <%=list[1].Mo_name %></td></tr>
         <tr><td class="auto-style4">类别 </td><td><%=list[1].Mo_notice %></td></tr>
         <tr><td class="auto-style4"> 状态</td><td><%=list[1].Mo_more %></td></tr>
         <tr><td class="auto-style4"> 日期</td><td><%=list[1].Mo_id%></td></tr>
         <tr><td class="auto-style4"> 操作</td></tr>
         <tr><td class="auto-style4"> </td></tr>
         <tr><td class="auto-style4"> </td></tr>
      
     

    <%
        string id = Request.QueryString["id"];/*获取当前删除的id*/
        if(id!=null)
        {
            BLL.BLL_Mass.del(int.Parse(id));
            UTILITY.JsHelper.AlertAndParentUrl("删除成功", "Forum_List.aspx");
        }
        //List<MODELS.MOD_Mass> list = BLL.BLL_Mass.list(); /*前台调用业务层bll*/
        //for (int i = 0; i < list.Count; i++)
        //{
 %>      
        

</table>

</div>
</asp:Content>
