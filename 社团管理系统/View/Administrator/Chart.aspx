<%@ Page Title="" Language="C#" MasterPageFile="~/View/Administrator/Administrator.Master" AutoEventWireup="true" CodeBehind="Chart.aspx.cs" Inherits="社团管理系统.View.Administrator.Chart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<script src="../../Assets/Lib/JS/echarts.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >




    <asp:Literal runat="server" ID="chart" ></asp:Literal>
    

</asp:Content>
