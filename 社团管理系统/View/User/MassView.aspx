<%@ Page Title="" Language="C#" MasterPageFile="~/View/User/User.Master" AutoEventWireup="true" CodeBehind="MassView.aspx.cs" Inherits="社团管理系统.View.User.MassView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <style>
.pos{
      position:absolute;
            top:50px;
            left:100px;
          /*  right:0px;*/
            width:100%;
}

</style>
  <div class="pos">
        <div style="text-align:center; left:550px;font-family:YouYuan;font-size:28px;top:10px;position:absolute;">
           
            <asp:Label ID="title" runat="server" Text="" ></asp:Label>
        </div>
      <br />
      <br />

        <div style="top:100px; color:red;">
             <span>创立时间:</span><asp:Label ID="menu" runat="server" Text="类型:"></asp:Label> <span>社团类型:</span><asp:Label ID="date" runat="server" Text="发布日期:"></asp:Label>
        </div>
          <br />
        <br />
        
             <div style="min-height:500px;">
             <span>正文：</span><asp:Label ID="more" runat="server" Text="正文:"></asp:Label>
       </div> 
          <br />
      
      <a href="MoInformation.aspx"> 返回社团浏览界面</a> <a href="PersonalCenter.aspx" style="position:absolute;right:200px;">申请</a>
      <div> </div>
</div>

<div>
  
</div>
</asp:Content>
