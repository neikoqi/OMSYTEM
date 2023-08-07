<%@ Page Title="" Language="C#" MasterPageFile="~/View/User/User.Master" AutoEventWireup="true" CodeBehind="MoInformation.aspx.cs" Inherits="社团管理系统.View.User.Information" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2 style="top:0px;left:100px;">精彩社团</h2>
<%--  <style>
        .box{
            width: 600px;
            height: 300px;
            border: 3px solid gray;
            display: grid;
            grid-template-rows:repeat(3,100px);
            grid-template-columns:repeat(6,100px);
        }
        .box img:nth-child(1){
            grid-row: 1/3;
            grid-column: 1/5;
        }
        .box img:nth-child(2){
            grid-row: 3/4;
            grid-column: 1/3;
        }
        .box img:nth-child(3){
            grid-row: 3/4;
            grid-column: 3/4;
        }
        .box img:nth-child(4){
            grid-row: 3/4;
            grid-column: 4/5;
        }
        .box img:nth-child(5){
            grid-row: 1/2;
            grid-column: 5/7;
        }
        .box img:nth-child(6){
            grid-row: 2/4;
            grid-column: 5/7;
        }
        .box img{
            width: 100%;
        }
    </style>


    <div class="box">
        <img src="./img/a1.png" alt="1">
        <img src="./img/a2.png" alt="1">
        <img src="./img/a3.png" alt="1">
        <img src="./img/a4.png" alt="1">
        <img src="./img/a5.png" alt="1">
        <img src="./img/a6.png" alt="1">
    </div>--%>
<%--一个不规则图片尝试--%>
<style>
	*, ::before, ::after {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
	.wrapper {
    width: 990px;
    height: auto;
    background-color: #ffffff;
    margin: 20px auto 10px auto;
    padding-bottom: 20px;
    overflow: hidden;
    border-radius: 5px;
}
	.still {
    width: 990px;
    height: auto;
    float: left;
}

    .still h2 {
        width: 950px;
        height: 30px;
        line-height: 30px;
        font-size: 16px;
        color: #1c98b0;
        margin: 15px 0 0 20px;
        float: left;
    }

    .still figure {
        width: 304px;
        height: auto;
        margin: 20px 0 0 20px;
        float: left;
        border-radius: 5px;
        overflow: hidden;
    }

        .still figure:nth-child(3n) {
            margin-right: 0;
        }

        .still figure img {
            width: 304px;
            height: 190px;
            float: left;
        }

        .still figure figcaption {
            width: 304px;
            height: 50px;
            line-height: 50px;
            font-size: 13px;
            text-align: center;
            background-color: #f9f9f9;
            float: left;
        }

</style>
    <div>
        <a href="#">首页</a>/社团详情
    </div>

	<div class="wrapper">

		<!--still start-->
		<div class="still">
		
			
			
			<figure>
                <img src="../../Assets/Images/p7_tree1_a.abf4100a.png" />
				<a href="../User/Organziation Mass/wenxue.aspx"><figcaption>文学社</figcaption>
				</a>
				
			</figure>
			
			<figure>
               <img src="../../Assets/Images/MassImage/1685369723362.png" />
				<figcaption><a href="MassView.aspx?id=20080391">音乐社</a></figcaption>
			</figure>
			    
			<figure>
                <img src="../../Assets/Images/MassImage/ex.png" />
				<figcaption><a href="MassView.aspx?id=20080391">冒险家协会</a></figcaption>
			</figure>
			
			<figure>
				<img src="../../Assets/Images/MassImage/gui.png" style="overflow:hidden"/>
				<figcaption><a href="MassView.aspx?id=20080391">动漫社</a></figcaption>
			</figure>
			
			<figure>
                <img src="../../Assets/Images/MassImage/1685370283583.png" />
                
				<figcaption><a href="MassView.aspx?id=20080391">美工社</a></figcaption>
			</figure>
			
			<figure>
                <img src="../../Assets/Images/MassImage/hou.png"  style="overflow:hidden"/>
				<figcaption><a href="MassView.aspx?id=20080394">神奇动物保护协会</a></figcaption>
			</figure>
			
			<figure>
				<img src="../../Assets/Images/MassImage/1685370273139.png" />
				<figcaption><a href="MassView.aspx?id=20080391">卷毛狒狒研究会</a></figcaption>
			</figure>
			
			<figure>
                <img src="../../Assets/Images/MassImage/scp.png" />
				<figcaption><a href="MassView.aspx?id=20080391">基金会</a></figcaption>
			</figure>
			
			<figure>
                <img src="../../Assets/Images/MassImage/kun.png" />
				<figcaption><a href="MassView.aspx?id=20080396">爱坤联盟</a></figcaption>
			</figure>
			
			<figure>
                <img src="../../Assets/Images/MassImage/cat.png" />
				<figcaption> <a href="MassView.aspx?id=20080391">圣火喵喵</a></figcaption>
			</figure>
			
			<figure>
                <img src="../../Assets/Images/MassImage/dog.png" />
				<figcaption><a href="MassView.aspx?id=20080391">皓月狗狗</a></figcaption>
			</figure>
			
			<figure>
                <img src="../../Assets/Images/MassImage/1685369780253.png" />
				<figcaption> <a href="MassView.aspx?id=20080391">书法社</a></figcaption>
			</figure>
			
		</div>
		<!--still end-->
		
	</div>






<div style="position:relative;bottom:0px;text-align:center;">
	<a href="#"><label>1</label></a>
	<a href="#"><label>2</label></a>
</div>
<p>fanye</p>



</asp:Content>
