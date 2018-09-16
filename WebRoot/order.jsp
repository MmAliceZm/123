<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
 <head lang="en">
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    
    <title>My JSP 'order.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 <style>
            * {
                padding: 0;
                margin: 0;
            }
            body{
                background:url("img/bg.jpg");
                overflow-x: hidden;
            }
            .top{
                position: absolute;
                top: 20px;
                display: block;
                margin: 0;
                width: 100%;
                height: 40px;
                background: rgba(255, 248, 249, 0.82);
                font-size: 15px;
                line-height: 40px;
            }
            .menu a {
                color: #212121;
                text-decoration: none;
                width: 100px;
            }
            .menu a:hover {
                color: #8b8276;
                text-decoration: none;
            }
            .menu{
                width: 99%;
                height: 40px;
                position: absolute;
                left: 80px;
                list-style: none;

            }
            .menu li{
                width: 16%;
                height: 40px;
                float: left;

            }
            .tabs{
                margin: 40px auto;
                height: 40px;
            }
            .tabs div{
                display: none;
            }
            .tabs #tb1{
                height: 40px;
                background: rgb(250, 214, 204);
            }
            .form-inline {
                position: absolute;
                left: 40%;
                margin-top: 0px;
                line-height: 40px;
                float: left;
            }
            .searchText {
                margin-top: -1px;
                padding: 4px 6px;
            }
            #searchBut {
                width: 50px;
                height: 30px;
                border: hidden;
                background-color: #ffd3c5;
                font-size: 15px;
                cursor: pointer;
                border-radius: 4px;
                margin-left: 10px;
                color: #232323;
            }

            #searchBut:hover {
                background-color: rgba(255, 211, 197, 0.68);
            }
             .navtop {
                 margin:0 auto;
                 margin-top: 120px;
                 width: 1200px;
                 height: auto;
                 box-shadow:1px 1px 2px rgba(107,102,103,0.80);
                 background-color:rgba(255, 248, 249, 0.82);
                 bordor-radius:2px;
                 opacity: 0.9;
                 text-align: left;
             }
             .navtop tr {
                 font-size: 18px;
                 height: 50px;
             }
             .t1 {
                 width: 100px;
             }
             .t2 {
                 width: 140px;
                 text-align: center;
             }
             .t3 {
                 width: 60px;
                 text-align: center;
             }
             input {
                 margin: 15px;
             }
            .phones {
            
                margin: 20px auto;
                width: 1200px;
                height: auto;
                background-color: rgba(255, 248, 249, 0.82);
                opacity: 0.9;
                text-align: left;
                 bordor-radius:2px;
                box-shadow:1px 1px 2px rgba(107,102,103,0.80);
            }
            .phones img {
                width:90px;
                height: 90px;
                vertical-align: middle;
            }
            .phones tr {
                font-size: 15px;
                height: 120px;
            }
            .phones a {
                text-decoration: none;
                color: #000000;
            }
            .phones a:hover {
                color: coral;
            }
            .footer {
                margin: 20px auto;
                width: 1200px;
                height: 60px;
            }
            .footer button {
                width: 100px;
                height: 50px;
                float: right;
                background-color:rgba(255, 248, 249, 0.82);
                border: none;
                margin-left: 15px;
            }
            .footer button:hover {
                background-color: rgba(255, 255, 255, 0.95);
             
                border: 1px solid coral;
                color: coral;
                margin-left: 15px;
            }
        </style>
        <script src="js/jquery-1.8.0.js"></script>
        <script>
            $(function(){
                $(".d1 a").click(function(){
                    var str=$(this).attr("rel");/*获取当前标签的属性值*/
                    $("#"+str).show(300);/*拼接用双引号*//*slideDown下滑 fadeIn淡入*/
                    $("#"+str).siblings().hide(100);/*slideUp收起 fadeOut淡出*/
                })
            })
        </script>
  </head>
  
  <body>
    <div class="all">
            <div class="top">
        <ul class="menu">
            <li><a href="index.jsp"><img src="img/icon.png" class="icon" width="60px" height="40px"></a></li>
            <li class="d1"><a href="#" rel="tb1"><img src="img/search.png"  class="search" width="50px" height="45px"></a></li>
            <li class="d1"><a href="#" rel="tb2">商品分类</a></li>
            <li>
                <c:if test="${ empty custom}">
                   <div class='d1'><a href='login.html'>请登录</a></div>
                </c:if>
                <c:if test="${ not empty custom}">
                   <div class='d1'><a href="Myhome.jsp">欢迎${custom.cname} </a><a href="showCart.jsp">购物车</a></div>
                </c:if>
            </li>
            
            <li><a href="#">客户服务</a></li>
            <li><a href="#">联系我们</a></li>
        </ul>
        <div class="tabs">
            <div id="tb1">
                <form class="form-inline" action="searchGoods.jsp">
                        <input type="text" name="gstr" class="searchText">
                    <input type="submit" id="searchBut" value="搜索">
                </form>
            </div>
        </div>
    </div>
            <div class="nav">
                <table class="navtop">
                    <tr>
                        <th class="t1"><input type="checkbox">全选</th>
                        <th class="t2">宝贝</th>
                        <th class="t3">单价</th>
                        <th class="t3">数量</th>
                        <th class="t2">商品操作</th>
                        <th class="t3">实付款</th>
                        <th class="t2">交易状态</th>
                        <th class="t2">交易操作</th>
                    </tr>
                </table>
                <table class="phones">
                    <tr>
                        <th class="t1"><input type="checkbox"><img src="img/dingdan.jpg"></th>
                        <td class="t2"><span>华为Mate10</span></td>
                        <td class="t3">￥3899.0</td>
                        <td class="t3">2</td>
                        <td class="t2">退货</td>
                        <td class="t3">￥7798.0</td>
                        <td class="t2" >已付款</td>
                        <td class="t2"><a href="#">确认收货</a>/<a href="#">查看物流</a></td>
                    </tr>
                    <tr>
                        <th class="t1"><input type="checkbox"><img src="img/apple8.jpg"></th>
                        <td class="t2"><span>Apple/苹果 iPhone 8 </span></td>
                        <td class="t3">￥7188.00</td>
                        <td class="t3">1</td>
                        <td class="t2">退货</td>
                        <td class="t3">￥7188.00</td>
                        <td class="t2" >已取消</td>
                        <td class="t2"><a href="#">删除订单</a></td>
                    </tr>
                    <tr>
                        <th class="t1"><input type="checkbox"><img src="img/meitu.jpg"></th>
                        <td class="t2"><span>Meitu/美图 美图M8</span></td>
                        <td class="t3">¥ 3599.00</td>
                        <td class="t3">1</td>
                        <td class="t2">退货</td>
                        <td class="t3">¥ 3599.00</td>
                        <td class="t2" >已付款</td>
                        <td class="t2"><a href="#">确认收货</a>/<a href="#">查看物流</a></td>
                    </tr>
                </table>
                <div class="footer">
                    <button class="up">上一页</button>;
                    <button class="down">下一页</button>
                </div>
            </div>
        </div>
  </body>
</html>
