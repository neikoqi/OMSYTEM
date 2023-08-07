<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="社团管理系统.View.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

<link rel="stylesheet" href="../Assets/lib/css/bootstrap.min.css" />

    <style type="text/css">
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
        .auto-style1 {
            width: 709px;
            height: 660px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div>
                <form id="form1" runat="server">
                    <div>
                        <img src="../Assets/Images/p2_tree_a.53b77648.png" class="auto-style1" />

                    </div>
                    <div>                   
                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                        <asp:TextBox ID="txtUser" runat="server" OnTextChanged="txtUser_TextChanged"></asp:TextBox>
                    </div>

                    <div>
                        <asp:Label ID="Label2" runat="server" Text="PassWord"></asp:Label>
                        <asp:TextBox ID="txtPwd" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="Label3" runat="server" Text="PassWord"></asp:Label>
                        <asp:TextBox ID="Txtpwd2" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Button ID="Re_bt" runat="server" Text="Register" Width="100px"  Class="btn-success btn" OnClick="Re_bt_Click"/>
                        <asp:Button ID="Lo_bt" runat="server" Text="Login"  Width="100px"  Class="btn-success btn" OnClick="Lo_bt_Click" />

                    </div>
                </form>
        </div>
    </div>
    
</body>
</html>
