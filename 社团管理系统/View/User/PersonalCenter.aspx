<%@ Page Title="" Language="C#" MasterPageFile="~/View/User/User.Master" AutoEventWireup="true" CodeBehind="PersonalCenter.aspx.cs" Inherits="社团管理系统.View.User.PersonalCenter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../Assets/Lib/MyCss/View.css" rel="stylesheet" />
    <link href="../../Assets/Lib/Css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../Assets/Lib/MyCss/Personal.css" rel="stylesheet" />
    

<style>
	.centerpage{
		position:absolute;
		left:350px;
	
	}
	.backcolor{
		position:absolute;
		top:50px;
		left:0px;
		right:0px;
		bottom:0px;
		height:900px;
		background-color:antiquewhite;
	}
</style>

<div class="backcolor">
        <div class="wrapper" style="background-color:antiquewhite">

		<div class="register">
				<h1 style="font-family:LiSu;background-color:antiquewhite;font-size:60px">个人信息完善</h1>
			<div class="register_form centerpage">
				<form id="register_form" name="register_form" method="post">
				
					<dl>
						<dt><span>*</span>用户账号：</dt>
						<dd><input type="text" name="uname" value="" id="idcb" runat="server"/></dd>
					</dl>
					<dl>
						<dt><span>*</span>用户昵称：</dt>
						<dd><input type="text" name="uname" value="" id="namecb" runat="server"/></dd>
					</dl>
					<dl>
						<dt><span>*</span>性别：</dt>
						<dd><input type="text" name="linkname" value="" id="sexcb" runat="server"/></dd>
					</dl>
					<dl>
						<dt><span>*</span>手机号码：</dt>
						<dd><input type="text" name="mobile" value="" id="numbercb" runat="server" /></dd>
					</dl>
					<dl>
						<dt><span>*</span>常用邮箱：</dt>
						<dd><input type="text" name="email" value="" id="emailcb" runat="server"/></dd>
					</dl>
					<dl>
						<dt><span>*</span>专业：</dt>
						<dd><input type="text" name="linkname" value="" id="gradecb" runat="server"/></dd>
					</dl>
	
					<dl>
						<dt><span></span>真实姓名：</dt>
						<dd><input type="text" name="linkname" value="" id="vnamecb" runat="server"/></dd>
					</dl>
			

					<dl>
						<dt></dt>
						<asp:Label ID="ErrMsg" runat="server" class="text-danger"></asp:Label>
						<dd>
							<asp:Button style="background-color:teal" ID="Button1" runat="server" Text="同意协议并申请入会" OnClick="Button1_Click" /></dd>
							<%--<input type="button" class="submit" value=""/>--%>
					</dl>
				</form>
			</div>
			
		</div>



               
     </div> 
	</div>
</asp:Content>
