<%@ Page Title="" Language="C#" MasterPageFile="~/View/Administrator/Administrator.Master" AutoEventWireup="true" CodeBehind="ForumTypeAdd.aspx.cs" Inherits="社团管理系统.View.Administrator.ForumTypeAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<table border="1" align="center" width="100%">
    <tr >
        <td >
            公告类型:
            <asp:TextBox ID="title" runat="server" width="60%"   BorderStyle="Solid" Font-Bold="False" Height="30px"></asp:TextBox>
        </td>
    </tr>
        <tr>
        <td>
            设置状态:
            <asp:DropDownList ID="state" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" width="30%" Height="30px">
                <asp:ListItem Value="1">发布</asp:ListItem>
                <asp:ListItem Value="0">关闭</asp:ListItem>
            </asp:DropDownList>
           <%-- <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>--%>
        </td>
    </tr>
        <tr>
        <td>
         <%--   title:
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>--%>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加"  Class="btn-success btn"  Width="100px"/>
        </td>
    </tr>
        <tr>
        <td>
</table>

</asp:Content>
