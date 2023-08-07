<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MASSO.aspx.cs" Inherits="社团管理系统.View.Presidents.MASSO" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" action="MassAdd.ashx" >
        <div>

             

<table boder="1" width="100%" algin="center" >
    <thead><tb>添加社团</tb></thead>
    <tr algin="center">  <td>名称</td> <td>   <input id="name" type="text" name="name" /></td>
                      
    </tr >
    <tr algin="center"> <td>简介</td>   <td> <input id="more" type="text" name="more" /></td> 
    </tr >
    <tr algin="center"> <td>类别</td> <td><input id="type" type="text" name="type" /></td>
    </tr >
 <%--   <tr><td>类别</td><td>
                    <select id="menu" name="menu">
                        <%List<MODELS.MOD_Menu> list = BLL.BLL_Menu.list();
                            for (int i = 0; i < list.Count; i++)
                            {
                            %>
                        <option value="<%=list[i].Id %>"> <%=list[i].Title %></option>
                       <%} %>
                    </select></td></tr>    --%>
    <tr algin="center"> <td style="height: 106px">详细</td>   <td style="height: 106px"><input id="ifo" type="text" name="ifo" style="width: 530px; height: 94px" /></td>
    </tr >
    <tr algin="center"> <td>地点</td> <td><input id="place" type="text" name="place" /></td>
    </tr >
    <tr algin="center">  <td>人数</td>    <td><input id="numbers" type="text" name="numbers" /></td>
       
    </tr >  
</table>
        </div>
    </form>
    <table><tr algin="center"><td><input id="Button1" type="submit" value="保存" /></td></tr> </table>

</body>
</html>
