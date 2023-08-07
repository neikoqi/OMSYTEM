<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="社团管理系统.View.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="../Assets/lib/css/bootstrap.min.css" />

    <style type="text/css">
      /*  .auto-style1 {
            width: 675px;
            height: 522px;
        }*/
     .container{
          width:contain;
          height:contain;
        /*  background-color:azure;*/
          margin:0 auto;
          text-align:center;
          top:0px;
          left:0px;
          right:0px;
          bottom:0px;
      
      }
     .btnlogin {
         position:relative;
         right:0px;
         left:0px;
         top:auto;
         bottom:auto;
         margin:auto;
     }
     /*#reset{
         position:relative;
         right:250px;
         left:auto;
         top:auto;
         bottom:auto;
         margin:auto;
     }*/

        /*.div{
            background-image: url(../Assets/images/p7_tree1_a.abf4100a.png  );*/
         /*   position:center;*/
        /*}*/
        body {
            background-image: url(../Assets/images/p7_tree1_a.abf4100a.png);
            background-repeat: no-repeat;
            background-position: center 0;
            /*background-size: cover;*/
        }
   
        .auto-style1 {
            left: 12px;
            right: -12px;
            top: -2px;
            bottom: 2px;
        }
        .auto-style2 {
            left: -248px;
            right: 148px;
            top: -2px;
            bottom: -30px;
        }
   
    </style>
    
</head>
   
<body>
   <div class="container">
   <%--<div class="container-fluid">--%>
        <%--<div class="row">

        </div>--%>

        <div class="row">
           <%-- <div class="col-md-4">

            </div>--%>
            <div class="col">
                <form id="form1" runat="server">
                    <%--<div id="image">
                        <img src="../Assets/images/p7_tree1_a.abf4100a.png " postion="center" />
                    </div>--%>
                     <div class ="mt-3">
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <asp:Label ID="txtN" runat="server" Text="用户名" OnTextChanged="textName_TextChanged"></asp:Label>
                         <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                         <%--<input type ="text" placeholder="用户名" autocomplete="off" class="form-control"id="txtName"/>--%>
                     </div>   
                     <div class ="mt-3">
                         <asp:Label ID="txtP" runat="server" Text="密码"></asp:Label>
                         &nbsp;
                         <%--<input type ="password" placeholder="密码" autocomplete="off" class="form-control" id="txtPwd"name="txtPwd"/>--%>
                         <asp:TextBox ID="txtPwd" runat="server" CssClass="offset-sm-0"></asp:TextBox>
                     </div>
                     <br />
                    <div class="btnlogin" >
                        <asp:Button ID="btnlogin" runat="server" Text="登录" OnClick="Button1_Click" Width="100px"  Class="btn-success btn" />
                        <%-- <br />
                        <br />
                        <asp:Button ID="reset" runat="server" OnClick="Button1_Click1" Text="重置" Width="100px"  Class="btn-success btn"  />--%>
                         <br />
                        <br />
                        <asp:Button ID="register" runat="server" OnClick="Button2_Click" Text="前往注册" Width="100px" Class="btn-success btn"/>
                    </div>
                </form>  
            </div>
           <%-- <div class="col-md-4">

            </div>--%>
        </div>          

   </div> 
    
   
</body>
</html>
