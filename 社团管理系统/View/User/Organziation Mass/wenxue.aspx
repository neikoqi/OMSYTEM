<%@ Page Title="" Language="C#" MasterPageFile="~/View/User/Organziation Mass/User Organization Mass.Master" AutoEventWireup="true" CodeBehind="wenxue.aspx.cs" Inherits="社团管理系统.View.User.Organziation_Mass.wenxue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <%--      <h2>文学社</h2>--%>

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
    background-color:teal;
  
 }
 .biaoti{
     position:absolute;
     top:180px;
     left:400px;
 }
</style>
 <div  class="total">
     <div class="header"> <a href="../MoInformation.aspx">社团首页</a>>文学社</div>
     <div class="biaoti">
         <h1 style="font-family:YouYuan;font-size:80px;">文学社</h1>
     </div>
 <div class="auto-style4"> 
     <img src="../../../Assets/Images/p2_silaimu.9f32c9eb.png" class="auto-style3" />

 </div>  
 <div class="auto-style2" style="">

    <p>账号：445420</p>
    <p>类型：兴趣社团</p>
   
    <p>人数：55</p>
    <p>社长：雷文</p>
    <p>关注人数：6000+</p>
    <p>成立时间：1993</p> 
    <p>社团详情：<a href="#">详细</a></p>
    <p>联系社长：<a href="#">联系</a></p>
<%-- <asp:Button ID="Button1" runat="server" Text="联系" />--%>
     <br />
<p>
 <asp:Label ID="Label1" runat="server" Text="申请加入："></asp:Label><a href="../PersonalCenter.aspx">申请</a>   
		  
  
</p>
 </div>

 </div> 
   <%-- <button onclick="myconfirm()">提交入会申请</button><!-- onclick事件会在对象被点击时发生 点击此按钮时开始加载myconfirm函数-->
    <script>
			function myconfirm() {
				var content;
				if (confirm("考虑一下吧")) { 
                 Response.Redirect("../PersonalCenter.aspx"); 
                   
				} else {
					
					content_false = "还是在考虑一下吧";
					document.write(content_false)
				}
			}
        </script>--%>
</asp:Content>
