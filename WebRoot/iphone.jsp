<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head lang="en">
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    
    <title>My JSP 'iphone.jsp' starting page</title>
    
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
            background:#FCEEE3;
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
            background: rgba(250, 214, 204, 0.71);
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
        }
        .lunbo_box{
            width: 1360px;
            height: 540px;
            overflow: hidden;
            position: relative;
        }

        .lunbo_box .pictures{
            width: 400%;
            height: 540px;
            list-style: none;
            position:absolute ;
            margin-left:7px;
            text-align: center;
            font-size: 30px;

        }

        .cover{
            width: 1360px;
            height: 540px;
            background: rgba(255, 244, 233, 0.45);
            margin-top: 540px;
        }
        .pictures:hover .cover{
            transition: all 0.5s ease;/*linear匀速 ease加速*/
            transform: translateY(-540px);
        }
        .lunbo_box .pictures li a{
            color: rgba(2, 2, 2, 0.69);

        }
        .lunbo_box .pictures li{
            width: 1360px;
            height: 540px;
            float: left;
        }
        .pictures li:nth-child(1){
            background: url("img/X.jpg") no-repeat center;
            line-height: 470px;
        }
        .pictures li:nth-child(2){
            background: url("img/8.jpg") no-repeat center;
            line-height: 300px;
        }
        .pictures li:nth-child(3){
            background: url("img/7.jpg") no-repeat center;
            line-height: 240px;
        }
        .pictures li:nth-child(4){
            background: url("img/SE.jpg") no-repeat center;
            line-height: 550px;
        }
        .mark{
            list-style: none;
            position: absolute;
            left: 44%;
            bottom: 10px;
            margin-left:-5px;
        }
        .mark li{
            width: 30px;
            height: 8px;
            background: rgba(5, 5, 5, 0.87);
            float: left;
            margin-right: 5px;

        }
        .left_btn,.right_btn{
            width: 50px;
            height: 100px;
            font-size: 60px;
            color: rgba(2, 2, 0, 0.89);
            position: absolute;


        }
        .left_btn{
            left: 12px;
            top: 50%;
            margin-top: -50px;

        }
        .right_btn{
            right: 0;
            top: 50%;
            margin-top: -50px;

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
            /*初始第一个高亮*/
            $(".mark li").eq(0).css({background:"white"});
            var timer=setInterval(fun,1000);
            var i=0;
            var w=$(".pictures li").width();
            function fun(){

                $(".pictures").css({left:-i*w});
                $(".mark li").eq(i).css({background:"white"});
                $(".mark li").eq(i).siblings().css({background:"rgba(5, 5, 5, 0.87)"});
                i++;
                if(i>=4){
                    i=0;
                }
            }
            $(".lunbo_box").mouseenter(function(){
                clearInterval(timer);}).mouseleave(function(){
                timer=setInterval(fun,1000);})
            $(".mark li").click(function(){
                $(this).css({background:"white"})
                $(this).siblings().css({background:"rgba(5, 5, 5, 0.87)"});
                var ti=$(this).index();
                i=ti;
                $(".pictures").css({left:-i*w});
            })

            $(".left_btn").click(function(){
                i--;
                if(i<0){
                    i=3;
                }
                $(".pictures").css({left:-i*w});
                $(".mark li").eq(i).css({background:"white"});
                $(".mark li").eq(i).siblings().css({background:"rgba(5, 5, 5, 0.87)"});

            })
            $(".right_btn").click(function(){
                i++;

                if(i>3){
                    i=0;
                }
                $(".pictures").css({left:-(i)*w});
                $(".mark li").eq(i).css({background:"white"});
                $(".mark li").eq(i).siblings().css({background:"rgba(5, 5, 5, 0.87)"});


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
    <div class="center">
        <div class="lunbo_box">
            <ul class="pictures">
                <li>
                    <div class="box">
                        <div></div>
                        <div class="cover"><a href="iphone X.jsp">购买</a></div>
                    </div>

                </li>
                <li>
                    <div class="box">
                        <div></div>
                        <div class="cover"><a href="iphone X.jsp">购买</a></div>
                    </div>
                </li>
                <li>
                    <div class="box">
                        <div></div>
                        <div class="cover"><a href="iphone X.jsp">购买</a></div>
                    </div>
                </li>
                <li>
                    <div class="box">
                        <div></div>
                        <div class="cover"><a href="iphone X.jsp">购买</a></div>
                    </div>

                </li>
            </ul>
            <ul class="mark">
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
            <div class="left_btn">&lt;</div>
            <div class="right_btn">&gt;</div>
        </div>
     </div>
</div>
</body>
</html>
