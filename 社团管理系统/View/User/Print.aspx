<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Print.aspx.cs" Inherits="社团管理系统.View.User.Print" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

	//打印操作
	<script type="text/javascript">
	function print() {
		var userAgent = navigator.userAgent.toLowerCase(); //取得浏览器的userAgent字符串
		if (userAgent.indexOf("trident") > -1) {
			alert("请使用google或者360浏览器打印");
			return false;
		} else if (userAgent.indexOf('msie') > -1) {
			var onlyChoseAlert = simpleAlert({
				"content" : "请使用Google或者360浏览器打印",
				"buttons" : {
					"确定" : function() {
						onlyChoseAlert.close();
					}
				}
			})
			alert("请使用google或者360浏览器打印");
			return false;
		} else {//其它浏览器使用lodop
			var oldstr = document.body.innerHTML;
			var headstr = "<html><head><title></title></head><body>";
			var footstr = "</body></html>";
			//执行隐藏打印区域不需要打印的内容
			document.getElementById("otherpho").style.display="none";
			var printData = document.getElementById("studentPhoTable").innerHTML; //获得 div 里的所有 html 数据
			var wind = window.open("", "newwin",
					"toolbar=no,scrollbars=yes,menubar=no");
			wind.document.body.innerHTML = headstr + printData + footstr;
			wind.print();
			//打印结束后，放开隐藏内容
			document.getElementById("otherpho").style.display="block";
			wind.close();
			window.document.body.innerHTML = oldstr;
		}
	}
</script>


</head>


<body>
	...
<!--打印内容开始-->
<div id='studentPhoTable'>
    ...
</div>
<!--打印内容结束-->
	...
<input type="button" onclick="print()"  value="确定打印" />
			




    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>
