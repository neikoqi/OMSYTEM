<%@ Page Title="" Language="C#" MasterPageFile="~/View/Presidents/Presidents.Master" AutoEventWireup="true" CodeBehind="MoApply.aspx.cs" Inherits="社团管理系统.View.Management.MoInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="../../Assets/Lib/Css/bootstrap.min.css" rel="stylesheet" />
    <h1 class="text-center">社团申请管理</h1>
   


    <div class="row">
        <asp:Label ID="ErrMsg" runat="server" class="text-danger"></asp:Label>
        <asp:GridView ID="GridView1" class="table table-bordered" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="210px" Width="1147px" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />

        </asp:GridView>

    </div>
    <div> 
      <asp:Button class="btn-success btn-block btn" ID="addbt" runat="server" Text="同意" OnClick="edit" />

      <asp:Button Class=" btn-warning btn-block btn" ID="deletebt" runat="server" Text="拒绝" OnClick="delete" />
        
    </div>
</asp:Content>
