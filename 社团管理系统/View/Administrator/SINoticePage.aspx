<%@ Page Title="" Language="C#" MasterPageFile="~/View/Administrator/Administrator.Master" AutoEventWireup="true" CodeBehind="SINoticePage.aspx.cs" Inherits="社团管理系统.View.Administrator.SINoticePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
#imgPreview {
 width: 100%;
 height: 100%;
 margin: 10px auto 0px auto;
 border: 1px solid black;
 text-align: center;
}
#prompt3 {
 width: 100%;
 height: 180px;
 text-align: center;
 position: relative;
}
#imgSpan {
 position: absolute;
 top: 60px;
 left: 40px;
}
.filepath {
 width: 100%;
 height: 100%;
 opacity: 0;
}
#img3 {
 height: 100%;
 width: 100%;
 display: none;

 
}
.containe{position:absolute;
         top:100px;
         right:200px;
         left:400px;
         bottom:400px;
         }

    .auto-style1 {
        width: 104%;
        height: 500px;
        opacity: 0;
    }

</style>
<script>
      function changepic() {
 $("#prompt3").css("display", "none");
 var reads = new FileReader();
 f = document.getElementById('file').files[0];
 reads.readAsDataURL(f);
 reads.onload = function(e) {
 document.getElementById('img3').src = this.result;
 $("#img3").css("display", "block");
 };
}
</script>
<div class="containe">
    <asp:Image ID="Image1" runat="server" />

<asp:Label ID="Label1" runat="server" Text="标题"></asp:Label>
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

 <div id="imgPreview">
 <div id="prompt3">
 <span id="imgSpan">
 点击上传
   <br />
 <i class="aui-iconfont aui-icon-plus"></i>
   <!--AUI框架中的图标-->
 </span>
 <input type="file" id="file" class="auto-style1" onchange="changepic(this)" accept="image/jpg,image/jpeg,image/png,image/PNG">
  <!--当vaule值改变时执行changepic函数，规定上传的文件只能是图片-->
 </div>
 <img src="#" id="img3" />
</div>
</div>
<%--<script>
    $('#chooseImage').on('change', function () {//当chooseImage的值改变时，执行此函数
        var filePath = $(this).val(), //获取到input的value，里面是文件的路径
            fileFormat = filePath.substring(filePath.lastIndexOf(".")).toLowerCase(),
            src = window.URL.createObjectURL(this.files[0]); //转成可以在本地预览的格式

        // 检查是否是图片
        if (!fileFormat.match(/.png|.jpg|.jpeg/)) {
            error_prompt_alert('上传错误,文件格式必须为：png/jpg/jpeg');
            return;
        } else {
            $('#cropedBigImg').css('display', 'block');
            $('#cropedBigImg').attr('src', src);
        }
    });

</script>
<style>
#img {
 float: left;
 margin-left: 20px;
 width: 150px;
 height: 60px;
 }
#upImg {
 position: absolute;
 top: 0px;
 left: 0px;
}
#upImg input {
 width: 70px;
 height: 60px;
 opacity: 0;
}
#imgPreview {
 width: 80px;
 height: 60px;
 position: absolute;
 left: 70px;
 top: 0px;
}
#cropedBigImg{
 width: 100%;
 height: 100%;
 display: none;
}

</style>
<div class="aui-col-xs-3" id="img">
 <svg class="icon bigIcon" aria-hidden="true">
 <use xlink:href="#icon-msnui-add"></use>
 </svg>
 <!--阿里巴巴矢量图标，就是最后效果图中的“+”图标-->
 <div class="aui-grid-label">添加图片</div>
 <div id="upImg">
  <input type="file" name="file" id="chooseImage" />
 </div>
 <div id="imgPreview">
  <img src="#" id="cropedBigImg" />
 </div>
</div>--%>

</asp:Content>
