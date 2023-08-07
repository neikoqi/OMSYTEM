<%@ Page Title="" Language="C#" MasterPageFile="~/View/Administrator/Administrator.Master" AutoEventWireup="true" CodeBehind="CoNotice.aspx.cs" Inherits="社团管理系统.View.Administrator.Content.CoNotice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



       
    <asp:Table ID="Table1" runat="server" Visible="True" Width="100%" CellPadding="4" CellSpacing="4" BackColor="Teal" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Height="200px" HorizontalAlign="Center">
        <asp:TableHeaderRow>
            <asp:TableHeaderCell> 
                活动咨询
            </asp:TableHeaderCell>

        </asp:TableHeaderRow>
        <asp:TableRow >
            <asp:TableCell Width="100px"> 发布组织</asp:TableCell>
            <asp:TableCell>
                <input class=" form-control" type="text" runat="server" id="numbertb" placeholder="" outocomplete="off" name="second"  >

            </asp:TableCell>
           
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell> 发布时间</asp:TableCell>
            <asp:TableCell> <input class=" form-control" type="date" runat="server" id="Text1" placeholder="" outocomplete="off" name="second"  ></asp:TableCell>
           
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>公告内容</asp:TableCell>
            <asp:TableCell> <input class=" form-control" type="date" runat="server" id="Date1" placeholder="" outocomplete="off" name="second"  ></asp:TableCell>
            
        </asp:TableRow>

        <asp:TableFooterRow>
            <asp:TableCell>
                
                 <asp:Button ID="Button1" runat="server" Text="确认发布" />
            </asp:TableCell>
        </asp:TableFooterRow>

    </asp:Table>
     
  
    
</asp:Content>
