using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UTILITY;
using System.Data;
namespace 社团管理系统.View.Administrator
{
    public partial class Chart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            var opt = new
            {
                title = new
                {
                    text = "社团人数统计"
                },
                tooltip = new { },
                legend = new
                {
                    data = new[] { "人数" }///数组
                },
                xAxis = new
                {
                    data = new[] { "音乐社", "文学社", "吃货联盟", "神奇动物保护协会", "爱坤联盟", "动漫社" }

                },
                yAxis = new { },
                series = new[] 
                {
                    new {
            name= "人数",
            type= "bar",
            data=new[]{55, 66, 99, 25, 25, 34 }//
            }
            }
        };

            chart.Text = String.Format(@"<div id=""main""style=""width:600px; height: 400px; ""></div> <script type=""text/javascript"">
           var myChart = echarts.init(document.getElementById('main'));
            var option ={0};
            myChart.setOption(option);
    </script > ", JsHelper.SerializeObject(opt));
    }
 }

}
