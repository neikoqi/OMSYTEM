﻿<%@ Page Title="" Language="C#" MasterPageFile="~/View/User/User.Master" AutoEventWireup="true" CodeBehind="ActivesView.aspx.cs" Inherits="社团管理系统.View.User.ActivesView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <script>
		function preview(fang) {
			if (fang < 10) {
				bdhtml = window.document.body.innerHTML;//获取当前页的html代码
				sprnstr = "<!--startprint" + fang + "-->";//设置打印开始区域
				eprnstr = "<!--endprint" + fang + "-->";//设置打印结束区域
				prnhtml = bdhtml.substring(bdhtml.indexOf(sprnstr) + 18); //从开始代码向后取html
				prnhtml = prnhtml.substring(0, prnhtml.indexOf(eprnstr));//从结束代码向前取html
				window.document.body.innerHTML = prnhtml;
				window.print();
				window.document.body.innerHTML = bdhtml;
			} else {
				window.print();
			}
		}
</script>
    <style>
.pos{
      position:absolute;
            top:50px;
            left:100px;
          /*  right:0px;*/
            width:100%;
}

</style>
  <div class="pos" id="fang">
        <div style="text-align:center; left:550px;font-family:YouYuan;font-size:28px;top:10px;position:absolute;">
           
            <asp:Label ID="title" runat="server" Text="" ></asp:Label>
        </div>
      <br />
      <br />

        <div style="top:100px; color:red;">
             <span>公告时间:</span><asp:Label ID="menu" runat="server" Text="类型:"></asp:Label> <span>公告类型:</span><asp:Label ID="date" runat="server" Text="发布日期:"></asp:Label>
        </div>
          <br />
        <br />
        
             <div style="min-height:500px;">
             <span>正文：</span><asp:Label ID="more" runat="server" Text="正文:"></asp:Label>
       </div> 
          <br />
      
      <a href="MoActivities.aspx"> 返回公告</a> <input type='button' name='button_export' title='打印' onclick=preview(fang) value='打印'> <a href="#" style="position:absolute;right:200px;">参加</a>
</div>


<div>
   
</div>
</asp:Content>
