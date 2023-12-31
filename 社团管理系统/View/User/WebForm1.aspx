﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="社团管理系统.View.User.WebForm1" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        #pie { 
            width: 1200px;
            height: 1200px;
        }
    </style>
    <script type="text/javascript" src="js/echarts.js"></script>
</head>

<body>
	
    <div id="pie" ,align ="center"></div>
    <script>
        // 饼状图
        // 基于准备好的dom，初始化echarts实例
        var pie = echarts.init(document.getElementById('pie'));
        // 指定图表的配置项和数据
        pieOption = {
            // 标题
            title: {
    //             text: 'echarts实现饼状图',
				// align="center"
				// text-align:center
				
            },
            // 图例
            tooltip: {
                show: true,
                trigger: "item",
                backgroundColor: "#1677FF",
                // {a}（系列名称），{b}（数据项名称），{c}（数值）, {d}（百分比）
                formatter: "{a}：{b}<br/>{c}个({d}%)"
            },
            // 不同区域的颜色
            color: ['#3e87ff', '#c0c0c0', '#b9cfec','#191970','#4B0082','#44ff99', '#8B0000',
			 '#0000ff','#ff1100', '#ff6600', '#ffbb00', '#020302','#ff0000','#ff00ff','#DC143C',
			 '#808000','#5F91A0','#FF1493','#000000','#008080','#800000','#FFFFFF','#006400'],
            series: [
                {
                    name: '课程种类',
                    type: 'pie',
                    // 数组的第一项是内半径，第二项是外半径；可以设置不同的内外半径显示成圆环图
                    radius: '50%',
                    // 饼图的中心（圆心）坐标，数组的第一项是横坐标，第二项是纵坐标；设置成百分比时第一项是相对于容器宽度，第二项是相对于容器高度
                    center: ['50%', '40%'],
                    data: [
                        { value: 9795, name: '创业' },
                        { value: 19840, name: '电子' },
						{ value: 38911, name: '工程' },
                        { value: 6609, name: '公共管理' },
						{ value: 3243, name: '化学' },
						{ value: 1221, name: '环境' },
						{ value: 111541, name: '计算机' },
						{ value: 641, name: '建筑' },
						{ value: 10783, name: '教育' },
						{ value: 24394, name: '经管会计' },
						{ value: 10380, name: '历史' },
						{ value: 10380, name: '汽车' },
						{ value: 46372, name: '社科法律' },
						{ value: 3371, name: '生命科学' },
						{ value: 14186, name: '数学' },
						{ value: 17659, name: '外语' },
						{ value: 15163, name: '文学' },
						{ value: 14531, name: '物理' },
						{ value: 68895, name: '医学健康' },
						{ value: 20185, name: '艺术设计' },
						{ value: 10012, name: '哲学' },
						{ value: 1139, name: '职场' },
						{ value: 9204, name: '其它' }
                    ],
                    itemStyle: {
                        // 显示图例
                        normal: {
                            label: {
                                show: true
                            },
                            labelLine: {
                                show: true
                            }
                        },
                        emphasis: {
                            // 图形阴影的模糊大小
                            shadowBlur: 10,
                            // 阴影水平方向上的偏移距离
                            shadowOffsetX: 0,
                            // 阴影颜色
                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                        }
                    }
                }
            ]
        };
        pie.setOption(pieOption);
    </script>
</body>

</html>
