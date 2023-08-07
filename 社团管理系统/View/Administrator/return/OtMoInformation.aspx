<%@ Page Title="" Language="C#" MasterPageFile="~/View/Administrator/Administrator.Master" AutoEventWireup="true" CodeBehind="OtMoInformation.aspx.cs" Inherits="社团管理系统.View.Administrator.Others.OtMoInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

   
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <link href="../../Assets/Lib/MyCss/View.css" rel="stylesheet" />
 <script src="../../Assets/Lib/MyJs/rotation.js"></script>

<style>
    .pictures {
        width:350px;
      /*  background-color:antiquewhite;*/
        height:600px;
        top:100px;
    }
/*    .frist {        
        top:50px;
        height:600px;
       
    }*/
    .auto-style2 {
        width: 100%;
        position:absolute;
        right:0px;
        left:750px;
        top:200px;
        height:600px;
        font-family:YouYuan;
        font-size:28px;
       /* background-image:url(../../../Assets/Images/p2_silaimu.9f32c9eb.png);*/
      /* background-color:aquamarine;*/
        
    }
   
    .auto-style3 {
        top: 280px;
        width: 342px;
        height: 231px;
        position:absolute;
        left:350px;
    }
 
    .auto-style4 {
        width: 350px; /*  background-color:antiquewhite;*/;
        height: 488px;
        top: 100px;
    }
 .total{
     top:200px; 
     height:900px;
    background-color:steelblue;
  
 }
 .biaoti{
     position:absolute;
     top:200px;
     left:300px;
 }
</style>
 <div  class="total">
     
     <div class="biaoti">
         <h1 style="font-family:YouYuan;font-size:29px;">社团名：</h1>
         <input class=" " type="text" runat="server" id="namecb" placeholder="" outocomplete="off" name="second" style="width:200px" >
     </div>
     <h1 style="position:absolute;top:10px;left:300px;font-family:LiSu;font-size:88px;">社团信息修改</h1>
 <div class="auto-style4"> 
     <img src="../../../Assets/Images/p2_silaimu.9f32c9eb.png" class="auto-style3" />

 </div>  
 <div class="auto-style2" style="">

    <p>账号：<input class=" " type="text" runat="server" id="idcb" placeholder="" outocomplete="off" name="second" style="width:350px" ></p>
    <p>类型：<input class="" type="text" runat="server" id="typecb" placeholder="" outocomplete="off" name="second" style="width:350px" ></p>
   
    <p>人数：<input class=" " type="text" runat="server" id="numbercb" placeholder="" outocomplete="off" name="second" style="width:350px" ></p>
    <p>社长：<input class=" " type="text" runat="server" id="prcb" placeholder="" outocomplete="off" name="second" style="width:350px" ></p>
    <p>关注人数：<input class=" " type="text" runat="server" id="vacb" placeholder="" outocomplete="off" name="second" style="width:350px" ></p>
    <p>成立时间：<input class=" " type="text" runat="server" id="timcb" placeholder="" outocomplete="off" name="second" style="width:350px" ></p> 
    <p>社团详情：<input class=" " type="text" runat="server" id="decb" placeholder="" outocomplete="off" name="second" style="width:350px" ></p>
    
<%-- <asp:Button ID="Button1" runat="server" Text="联系" />--%>
 <div> 
        <asp:Button class="btn-warning btn-block btn" ID="addbt" runat="server" Text="创建" OnClick="Button1_Click" />
       
        <asp:Button class="btn-success btn-block btn" ID="changebt" runat="server" Text="修改" OnClick="Button5_Click" />
        <asp:Button Class="btn-danger btn-block btn" ID="deletebt" runat="server" Text="删除" OnClick="Button6_Click" />

    </div>     
<%--<p>
 <asp:Label ID="Label1" runat="server" Text="社团信息修改"/>   
 <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />		  
  
</p>--%>
 </div>

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