<%@ Page Title="" Language="C#" MasterPageFile="~/View/Administrator/Administrator.Master" AutoEventWireup="true" CodeBehind="UsManager.aspx.cs" Inherits="社团管理系统.View.Administrator.UsManager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../Assets/Lib/Css/bootstrap.min.css" rel="stylesheet" />
    <h1 class="text-center">管理员管理</h1> 
    <div>
        <asp:Label class="form-label text-success" ID="second" runat="server" Text="名称"></asp:Label>
     <input class=" form-control" type="text" runat="server" id="fristtb" placeholder="" outocomplete="off" name="second"  >
   
        </div>
       <div>
    <div>
        <asp:Label class="form-label text-success" ID="frist" runat="server" Text="账号"></asp:Label>
        <input class=" form-control" type="text" placeholder="" outocomplete="off" runat="server" id="secondtb" name="frist"/>
   

    </div>
    
    
        <asp:Label class="form-label text-success" ID="Label1" runat="server" Text="密码"></asp:Label>
     <input class=" form-control" type="text" runat="server" id="enddatetb" placeholder="" outocomplete="off" name="second"  >
   
        </div>
      <%-- <div>
        <asp:Label class="form-label text-success" ID="Label2" runat="server" Text="电话号码"></asp:Label>
     <input class=" form-control" type="text" runat="server" id="numbertb" placeholder="" outocomplete="off" name="second"  >
   
        </div>     
        <div>
        <asp:Label class="form-label text-success" ID="Label3" runat="server" Text="邮箱"></asp:Label>
     <input class=" form-control" type="text" runat="server" id="emailtb" placeholder="" outocomplete="off" name="second"  >
   
        </div>    
    <div>
        <asp:Label class="form-label text-success" ID="Label4" runat="server" Text="班级"></asp:Label>
     <input class=" form-control" type="text" runat="server" id="gradetb" placeholder="" outocomplete="off" name="second"  >
   
        </div>    --%>
    <div> 
        <asp:Button class="btn-warning btn-block btn" ID="addbt" runat="server" Text="添加" OnClick="edit" />
       
        <asp:Button class="btn-success btn-block btn" ID="changebt" runat="server" Text="修改" OnClick="revise" />
        <asp:Button Class="btn-danger btn-block btn" ID="deletebt" runat="server" Text="删除" OnClick="delete" />

    </div>

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
</asp:Content>
