<%@ Page Title="" Language="C#" MasterPageFile="~/View/User/Personal/Personal.Master" AutoEventWireup="true" CodeBehind="Personalinformation.aspx.cs" Inherits="社团管理系统.View.User.Personal.Personalinformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



管理账户
同步
Rewards
个人信息
密码
付款信息
导入浏览器数据
用户偏好设置
与其他用户共享数据

 <a href="#" ><label>我的资料</label></a><br>


                   <a href="#" ><label>个人资料</label></a><br>

                   <a href="#" ><label>我的收藏</label></a><br>

                   <a href="#" ><label>站点管理</label></a><br>

                   <a href="#" ><label>我的资料</label></a><br>


                   <a href="#" ><label>我的社团</label></a><br>

                   <a href="#" ><label>我的收藏</label></a><br>

                   <a href="#" ><label>站点管理</label></a><br>
    <asp:TreeView ID="TreeView1" runat="server" ImageSet="Arrows">
        <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
        <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
        <ParentNodeStyle Font-Bold="False" />
        <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
    </asp:TreeView>

        <div>
            <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
         
            
            </asp:GridView>


    </div>
</asp:Content>
