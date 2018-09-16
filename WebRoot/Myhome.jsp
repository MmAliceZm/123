<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Myhome.jsp' starting page</title>
    
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
            list-style: none;
            text-decoration: none;
        }
        body{
            width: 100%;;
             background:url("img/bg.jpg");
            overflow: hidden;
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
            width: 94%;
            height: 40px;
            position: absolute;

            left: 80px;
            list-style: none;

        }
        .menu li{
            width: 14%;
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
        .center{
            width: 1360px;
            height:1200px;
            background: rgba(0, 0, 0, 0);
            position: absolute;
            top: 60px;
            overflow: hidden;
        }
        .sfq1{
            list-style: none;
            height: 420px;
            float: left;
        }
        .mv{
            margin-top: 80px;
            width: 620px;
            height:420px;
            float: left;
            background: rgba(255, 255, 255, 0);
            overflow: hidden;
        }
        .sfq2{
            list-style: none;
            height: 420px;
            float: right;

        }
        .center li{

            background: rgba(250, 214, 204, 0.58);
            width: 40px;
            height:600px;
            float: left;
            margin-left: 1px;
            text-align: center;
            line-height: 600px;
            color: rgba(35, 35, 35, 0.88);
            font-size: 30px;
            box-shadow:  0 0 6px rgba(238, 216, 209, 0.37) inset;

        }
        .center  div{
            display: none;/*不显示*/
            width: 620px;
            height:600px;
            background: rgba(250, 214, 204, 0.58);
            float: left;/*浮动*/
            text-align: center;
            overflow: hidden;
        }
        .center li:hover{
            background: rgba(234, 213, 210, 0.25);
        }
        .center a{
            color: #ffffff;
            width: 100px;
        }

        input.text{
            width: 200px;
            height: 21px;

            position: absolute;
            top: 8px;
            right: 270px;



        }
        .ull{
            width:136px ;
            /*position: absolute;*/
            /*left: 150px;*/
            /*border: 2px solid #999999;*/
            padding:50px 30px 50px 80px ;
            background-color: #FCEEE3;
        }
        main li{
            padding: 10px;

        }
        .right-1,.right-2,.right-3,.right-4{
            clear: left;
            float: left;
            width: 914px;
            height: 460px;
            background-color:#FEF6F5;
            margin: 20px;
            padding: 20px 0px;

        }
        .main{
            width: 1200px;
            height: 960px;
            margin-top: 10px;
            /*background: #ffffff;*/
            /*position: absolute;*/
            position: relative;
            left: 20px;
            top: -40px;
            opacity: 0.9;
            /*left: 1px;*/
        }
        .left,.right{
            float:left;
        }
        .right{
            /*margin: 20px;*/
            /*padding:0px 20px;*/
            background-color: #FCEEE3;

        }
        .right-2{
            position: relative;
           /*overflow: hidden;*/
        }
        .ph-r{

            /*background-color: pink;*/
            width: 100px;
            height: 50px;
            margin-top: 5px;

        }
        .ph-l{
            margin-top: 50px;

        }
        .photo{
            float: left;
            width: 70px;
            height: 90px;
            padding: 50px;


            /*border-right:1px solid  #999999 ;*/
        }
        .icon img{
            /*padding: 45px;*/
            margin-top: 20px;

            /*position: relative;*/
            /*margin-left: -10px;*/

        }
        .icon div{
            /*position: absolute;*/
            /*left: 500px;*/
            line-height: 20px;
            /*padding-left:10px ;*/
            font-size: 20px;
            text-align: center;
            float: left;
            padding: 30px;
        }
         a{
                color: black;
        }
         a:hover{
            color: #8b8276;
        }
        .sp{

            position: absolute;
            top: 20px;
            right: 20px;
        }

    </style>
     <script src="js/jquery-1.8.0.js"></script>
    <script>
        $(function(){
            $(".sfq1 li").click(function(){
                $(".sfq1").css({left:"0px"},10)
                $(".sfq2").css({left:"970px"},10)
                $(this).next("div").show(100);
                $(this).siblings("li").next("div").hide(10);
                $(".sfq2 li").prev("div").hide(10);
                $(".mv").css({width:"0px"},10);
            })
            $(".sfq2 li").click(function(){
                $(".sfq1").css({left:"0px"},10)
                $(".sfq2").css({left:"350px"},10)
                $(this).prev("div").show(100);
                $(this).siblings("li").prev("div").hide(10);
                $(".sfq1 li").next("div").hide(10);
                $(".mv").css({width:"0px"},10)
            })
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
            <li class="d1"><a href="#" rel="tb1"><img src="img/search.png" class="search" width="50px" height="45px"></a></li>
            <li class="d1">主页</li>
             <li>
                 <c:if test="${ not empty custom}">
                   <div class='d1'>欢迎<a href="Myhome.jsp">${custom.cname} </a><a href="showCart.jsp">购物车</a></div>
                </c:if>
            </li>
            <li><a href="#">客户服务</a></li>
            <li><a href="#">联系我们</a></li>
            <li><a href="#">退出</a></li>
        </ul>
     <div class="tabs">
            <div id="tb1">
                <form class="form-inline" action="searchGoods.jsp">
                        <input type="text" name="gstr" class="searchText">
                    <input type="submit" id="searchBut" value="搜索">
                </form>
            </div>
        </div>
        <div class="main">
            <div class="left">
                <ul class="ull">
                    <div class="title"><b>订单中心</b></div>
                    <li><a href="order.html">我的订单</a></li>
                    <li>评价晒单</li>
                    <li>我的购物助手</li>
                    <br>
                    <hr>
                    <br>
                    <div class="title"><b>关注中心</b></div>
                    <li>关注的商品</li>
                    <li>关注的品牌</li>
                    <li>收藏的内容</li>
                    <li>浏览历史</li>
                    <br>
                    <hr>
                   

                </ul>
            </div>
            <div class="right">
                <div class="right-1">
                    <div class="photo">
                        <span class="ph-l"><img src="img/p-header.png" width="60px" height="80px"></span>
                        <br><span class="ph-r">LV 1<br>积分：66</span>
                    </div>
                    <div class="icon">
                        <div class="cost"><img src="img/icon-1.png"><br><br><a href="#">待付款（0）</a></div>
                        <div><img src="img/icon-2.png"><br><br><a href="#">待发货（0）</a> </div>
                        <div><img src="img/icon-3.png"><br><br><a href="#">待收货（0）</a></div>
                        <div><img src="img/icon-4.png"><br><br><a href="#">待评价（0）</a></div>
                    </div>
                </div>
               
            </div>
        </div>

    </div>
    </div>
    
  </body>
</html>
