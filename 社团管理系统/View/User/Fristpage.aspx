<%@ Page Title="" Language="C#" MasterPageFile="~/View/User/User.Master" AutoEventWireup="true" CodeBehind="Fristpage.aspx.cs" Inherits="社团管理系统.View.User.Fristpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="../../Assets/Lib/MyCss/Notice.css" rel="stylesheet" />
    <script src="../../Assets/Lib/MyJs/Notice.js"></script>

<%--       轮播图--%>

        <div class="focus" style="top:50px;">
            <a href="javascript:;" class="focus_l">&lt; </a>
            <a href="javascript:;" class="focus_r">&gt;</a>
            
            
            <ul class="pic_ul">
               
                <li>
                    <a href="#"><img src="../../Assets/Images/p2_silaimu.9f32c9eb.png" style="margin:auto" /></a>           
                </li>

                <li>
                    <a href="#">
                        &nbsp;<img src="../../Assets/Images/p2_tree_a.53b77648.png"style="text-align:center" /></a></li>

                <li>
                    <a href="#">
                        <img src="../../Assets/Images/p2_tree_b.c99e9f12.png" style="text-align:center" />
                    </a>
                </li>

                <li>
                    <a href="#">
                        <img src="../../Assets/Images/p2_tree_c.2389476c.png" style="text-align:center" />
                    </a>
                </li>

                <li>
                    <a href="#"> <img src="../../Assets/Images/p2_tree_d.ca9f46af.png" style="text-align:center" />   

                    </a>
                </li>

                <li>
                    <a href="#"><img src="../../Assets/Images/p2_tree_e.ce0efc4d.png" style="text-align:center" /> 
                    </a>
                </li>

            </ul>

            <ol class="focus_ol">

            </ol>
        </div>

<div style="top:150px;background-color:red;">
    <div style="top:150px;bottom:300px;right:100px;left:100px;background-color:aqua">

    </div>
</div>
<!DOCTYPE html>

    <link href="../../Assets/Lib/MyCss/xuanfu.css" rel="stylesheet" />
  <link rel="stylesheet" href="./style.css">

<!-- partial:index.partial.html -->
<div class="container">
 <%-- <p class="header">鼠标悬停图片特效</p>--%>
  <div class="content">
     <div class="wrapper">
      <div class="box vintage">
        <img src="https://source.unsplash.com/900x900/?vintage" alt="EMMYLOU">
        <h2>EMMYLOU</h2>
        <p>I'll be your Emmylou and I'll be your June</p>
      </div>
    </div>
    <div class="wrapper">
      <div class="box w-content">
        <img src="https://source.unsplash.com/900x900/?art,history
  " alt="Jenny of Oldstones">
        <div class="frame">
          <h2>Jenny of Oldstones</h2>
        </div>
      </div>
    </div>
    <div class="wrapper">
      <div class="box postcard">
        <img src="https://source.unsplash.com/900x900/?ocean,sunset" alt="BOX">
        <h2>The Pursuit of  <p class="hide">HAPPINESS</p></h2>
      </div>
    </div>
    <div class="wrapper">
      <div class="box zoom-in">
        <img src="https://source.unsplash.com/900x900/?italy,travel
" alt="Postcards From Italy">
        <h2>Postcards From Italy</h2>
        <p>And I will love to see that day</p>
      </div>
    </div>
    <div class="wrapper">
      <div class="box blury-card" >
        <img src="https://source.unsplash.com/900x900/?street,travel
" alt="Blue Ridge Mountains">
        <div class="frame">
          <h2>Blue Ridge</h2>
          <p>MOUNTAINS</p>
        </div>
      </div>
    </div>
    <div class="wrapper">
      <div class="box zoom-out">
        <img src="https://source.unsplash.com/900x900/?photography
" alt="Melody Noir">
        <div class="frame">
          <h2>MELODY <span>NOIR</span></h2>
          <p>Tell me where the wind is blowing 'cause that's where the music's going</p>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- partial -->
  


</asp:Content>
