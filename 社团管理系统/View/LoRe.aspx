<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoRe.aspx.cs" Inherits="社团管理系统.View.User.LoRe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml"lang="en">
<head runat="server" charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 
    <title>92ui.net - Pure CSS animated signin &amp; signup form</title> 
    <link href="../../Assets/Lib/MyCss/Style.css" rel="stylesheet" /> 
</head>
<body  runat="server">

    <!-- partial:index.partial.html -->
    <div>
        <input type="checkbox" class="checkboxButton"/>
        <div class="mainButton">
            <span class="signInText">Sign in</span>
            <span class="signUpText">Sign up</span>
        </div>

        <div class="formsWrapper">
            <div class="signIn">
                <h1 class="title">Welcome back,</h1>
                <form action="#"  runat="server" >
                    <div class="input">
                        <input type="text" placeholder="Email" id="emtb" runat="server" name="emtb"/>
                        <label for="">Email</label>
                    </div>
                    <div class="input">
                        <input type="password" placeholder="Password" id="patb" name="patb" runat="server"/>
                        <label for="">Password</label>
                    </div>

                    <a href="#" class="link">Forgot password?</a>

                    <%--<button ></button>--%><asp:Button ID="Button1" runat="server" Text="Sign in" class="formButton" OnClick="Button1_Click" />
              <%--  </form>--%>

                <!-- signature -->
                <div class="signature-wrapper">
                    <div class="signature-title">
                        Hey there, I'm Nitish, a frontend developer.
                    </div>

                    <a class="signature-link" target="_blank" href="Login.aspx">管理员</a>
                </div>
                <!-- signature -->
            </div>

            <div class="signUp">
                <h1 class="title">Time to feel like home,</h1>
              <%--  <form action="#">--%>
                    <div class="input">
                        <input type="text" placeholder="Name" id="natb" runat="server"/>
                        <label for="">Name</label>
                    </div>
                    <div class="input">
                        <input type="text" placeholder="Email" id="Ematb" runat="server"/>
                        <label for="">Email</label>
                    </div>
                    <div class="input">
                        <input type="password" placeholder="Password" id="Pastb" runat="server"/>
                        <label for="">Password</label>
                    </div>
                   <asp:Button ID="Button2" runat="server" Text="Sign up" class="formButton" OnClick="Button1_Click" />
                </form>

                <!-- signature -->
                <div class="signature-wrapper">
                    <div class="signature-title">
                        Hey there, I'm Nitish, a frontend developer.
                    </div>

                    <a class="signature-link" target="_blank" href="Login.aspx">管理员</a>
                </div>
                <!-- signature -->
            </div>
        </div>

        <div class="main"></div>

        <div class="leftBar">
            <div class="content1">
                <h1>One of us ?</h1>
                <p>
                    If you have an account,
                    just sign in.
                </p>
            </div>

            <div class="content2">
                <h1>New Here ?</h1>
                <p>Sign up and discover great<br/> amount of new opportunities.</p>
            </div>
        </div>
    </div>
    <!-- partial -->

</body>
</html>


        
    
