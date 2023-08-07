<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForumAdd.aspx.cs" Inherits="社团管理系统.View.Administrator.ForumAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<style>
        *{
            font-family:STXihei;
        }
       #left{
            color:white;
            height:1300px;
            background-color:teal;
            overflow:hidden;
            width:245px;
        }
       label{
           color:white;
       }
       .a{text-decoration:none;cursor:pointer;
       }
        .a:link{color:#666666;
       }
        .a:hover{color:#1c98b0;
       }
        .a:visited{color:#666666;
       }
        td{
            background-color:darkcyan;
            color:#ffd800;
        }
        .add{
            position:absolute;
            top:0px;
            left:255px;
            right:0px;
            width:100%;
        }
    </style>
    <link href="../../Assets/lib/css/bootstrap.min.css" rel="stylesheet" />
</head>

   
<body>
    <div class="container-fluid">
         <div class="row">
            <div class="col-2<%-- bg-danger--%>" id="left">
                <div style="height:20px">
                       
                    <a href="#" ><label>站点管理</label></a><br/>
               
                    <img src="../../Assets/Images/p2_silaimu.9f32c9eb.png" style="height:40px;width:40px;" />
                    <a href="SINoticePage.aspx" ><label>轮播图</label></a><br/>
                    <img src="../../Assets/images/p7_tree2_a.3aa5ea2a.png" style="height:40px;width:40px;" />
                    <a href="ForumAdd.aspx" ><label>公告</label></a><br/>
                 <img src="../../Assets/images/p7_tree2_a.3aa5ea2a.png" style="height:40px;width:40px;" />
                    <a href="ForumType.aspx" ><label>公告类别</label></a><br/>
                    <img src="../../Assets/images/p7_tree2_a.3aa5ea2a.png" style="height:40px;width:40px;" />
                    <a href="Forum_List.aspx" ><label>公告管理</label></a><br/>
                    
                    <a href="#" ><label>用户管理</label></a><br/>
                    <img src="../../Assets/images/p7_tree2_a.3aa5ea2a.png" style="height:40px;width:40px;" />
                    <a href="UsMembers.aspx" ><label>社员</label></a><br/>
                    <img src="../../Assets/images/p7_tree2_a.3aa5ea2a.png" style="height:40px;width:40px;" />
                    <a href="UsPresident.aspx" ><label>社长</label></a><br/>
                    <img src="../../Assets/images/p7_tree2_a.3aa5ea2a.png" style="height:40px;width:40px;" />
                    <a href="UsManager.aspx" ><label>管理员</label></a><br/>
                    <img src="../../Assets/images/p7_tree2_a.3aa5ea2a.png" style="height:40px;width:40px;" />
                    <a href="Chart.aspx" ><label>统计</label></a><br/>
                    <a href="#" ><label>内容管理</label></a><br/>
                    <img src="../../Assets/images/p7_tree2_a.3aa5ea2a.png" style="height:40px;width:40px;" />
                    <a href="CoNotice.aspx" ><label>社团咨询</label></a><br/>
                    <img src="../../Assets/images/p7_tree2_a.3aa5ea2a.png" style="height:40px;width:40px;" />
                    <a href="CoForum.aspx" ><label>交流论坛</label></a><br/>

                    <a href="#" ><label>社团管理</label></a><br/>
                    <img src="../../Assets/images/p7_tree2_a.3aa5ea2a.png" style="height:40px;width:40px;" />
                    <a href="OtMoInformation.aspx" ><label>社团信息</label></a><br/>
                    <img src="../../Assets/images/p7_tree2_a.3aa5ea2a.png" style="height:40px;width:40px;" />
                    <a href="MoType.aspx" ><label>社团类别</label></a><br/>
                    <img src="../../Assets/images/p7_tree2_a.3aa5ea2a.png" style="height:40px;width:40px;" />
                    <a href="CoMoMembers.aspx" ><label>社团成员</label></a><br/>
                    <img src="../../Assets/images/p7_tree2_a.3aa5ea2a.png" style="height:40px;width:40px;" />
                    <a href="OtMoApply.aspx" ><label>入社申请</label></a><br/>
                    <img src="../../Assets/images/p7_tree2_a.3aa5ea2a.png" style="height:40px;width:40px;" />
                    <a href="CoMoActivities.aspx" ><label>社团活动</label></a><br/>
                </div>


</div>

</div>
    
</div>
    
<div class="add">
 <form id="form1" runat="server" action="Inco/MassAdd.ashx">

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
        
 
        

    
   
<%--   <tr algin="center">
        <td> </td>
        <td></td>
        <td> </td>
        <td> </td>
        <td> </td>
        <td><a href="Forum.aspx>查看</a>|<a href="ForumEdite.aspx?id=<%=list[i].Mo_id %>">修改</a>|<a href="Forum_List.aspx?id=<%=list[i].Mo_id %>">删除</a></td>
     
    </tr>   --%>

</table></form>
<table><tr algin="center"><td><input id="Button1" type="submit" value="保存" /></td></tr> </table>
</div>
</body>



</html>

