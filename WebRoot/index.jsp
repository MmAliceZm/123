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
    
    
    <title>My JSP 'index.jsp' starting page</title>
    
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
        .center{
            width: 1360px;
            height:1200px;
            background: rgba(0, 0, 0, 0);
            position: absolute;
            top: 100px;
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
            width: 73px;
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
        .sfq1 div:nth-child(2){
            line-height:600px;
            background: url("img/iPhone.jpg") no-repeat center rgba(250, 214, 204, 0.58);

        }
        .sfq1 div:nth-child(4){

            line-height:300px;
            background: url("img/HW.jpg") no-repeat center rgba(250, 214, 204, 0.58);
        }
        .sfq1 div:nth-child(6){
            line-height:400px;
            color: #ffffff;
            background: url("img/M.jpg") no-repeat center rgba(250, 214, 204, 0.58) ;
        }
        .sfq1 div:nth-child(8){
            background: url("img/Samsung.jpg") no-repeat center rgba(250, 214, 204, 0.58);
            line-height:750px;
        }
        .sfq1 div:nth-child(10){
            background: url("img/oppo.jpg") no-repeat center rgba(250, 214, 204, 0.58);
            line-height:800px;
        }
        .sfq2 div:nth-child(1){
            background: url("img/vivo.jpg") no-repeat center rgba(250, 214, 204, 0.58);
            line-height:480px;
        }
        .sfq2 div:nth-child(3){
            background: url("img/ONE.jpg") no-repeat center rgba(250, 214, 204, 0.58);
            line-height:660px;
        }
        .sfq2 div:nth-child(5){
            background: url("img/Meizu.jpg") no-repeat center rgba(250, 214, 204, 0.58);
            line-height:500px;
        }
        .sfq2 div:nth-child(7){
            background: url("img/moto.jpg") no-repeat center rgba(250, 214, 204, 0.58);
            line-height:550px;
        }
        .sfq2 div:nth-child(9){
            background: url("img/sony.jpg" )  no-repeat center rgba(250, 214, 204, 0.58);
            background-size: 620px 420px;
            line-height:700px;
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
            <li class="d1"><a href="#" rel="tb1"><img src="img/search.png"  class="search" width="50px" height="45px"></a></li>
            <li class="d1"><a href="#" rel="tb2">商品分类</a></li>
            <li>
                <c:if test="${ empty custom}">
                   <div class='d1'><a href='login.html'>请登录/注册</a></div>
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
    <div class="center">
        <ul class="sfq1">
            <li><p>苹果</p></li>
            <div><a href="iphone.jsp">了解详情</a></div>
            <li><p>华为</p></li>
            <div><a href="iphone.jsp">了解详情</a></div>
            <li><p>小米</p></li>
            <div>
                <a href="iphone.jsp">了解详情</a></div>
            <li><p>三星</p></li>
            <div><a href="iphone.jsp">了解详情</a></div>
            <li style="font-size:29px">oppo</li>
            <div><a href="iphone.jsp">了解详情</a></div>
        </ul>
        <ul class="mv">
            <video width="100%" height="100%" autoplay="1">
                <source src="audio/mv1.mp4" >
            </video>
        </ul>
        <ul class="sfq2">
            <div><a href="iphone.jsp">了解详情</a></div>
            <li >vivo</li>
            <div><a href="iphone.jsp">了解详情</a></div>
            <li>一加</li>
            <div><a href="iphone.jsp">了解详情</a></div>
            <li>魅族</li>
            <div><a href="iphone.jsp">了解详情</a></div>
            <li><p>moto</p></li>
            <div><a href="iphone.jsp">了解详情</a></div>
            <li>其他</li>
        </ul>
    </div>
</div>
  </body>
</html>
