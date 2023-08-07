<%@ Page Title="" Language="C#" MasterPageFile="~/View/Administrator/Administrator.Master" AutoEventWireup="true" CodeBehind="NoticeAdd.aspx.cs" Inherits="社团管理系统.View.Administrator.NoticeAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <style type="text/css">
        .auto-style1 {
            width: 767px;
            height: 139px;
        }
    </style>


    <form id="form1" runat="server" action="Forum_add.ashx">
        <div>
           
            <table boder="1" width="100%" algin="center">
                <tr><td>公告标题</td><td>
                    <input id="title" type="text" name="title" /></td></tr>
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
                    <textarea id="more" name="more" class="auto-style1"></textarea></td></tr>
                <tr><td>公告状态</td><td>
                    <select id="state" name="state">
                        <option value="1"> 正常</option>
                        <option value="0"> 关闭</option>
                    </select></td></tr>
                <tr><td></td><td>
                    <input id="Button1" type="submit" value="保存" /></td></tr>
            </table>
        </div>
    </form>

</asp:Content>
