<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'iphoneX.jsp' starting page</title>
    
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
            border: none;
            outline: none;
        }
        body{
            background:#FCEEE3;
            overflow-x: hidden;
        }
        .top{
            position: relative;
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
            width: 100%;
            height:1200px;
            background: rgba(0, 0, 0, 0);
            position: absolute;
            top: 100px;
        }
        .pheader {
            font-size:30px;
            color: #020200;
            margin-bottom: 20px;
            margin-left: 50px;
        }

        .information {
            width: 450px;
            height: 400px;
            float: left;
            margin-left:80px;
        }
        .information p {
            margin-bottom: 8px;
            color: #686C70;
            font-size: 15px;
        }
        .in-top {
            width: 420px;
            height: 105px;
            border-bottom: 1px #081128 solid;
        }
        .sp {
            font-size: 28px;
            color: red;
        }
        .price{
            text-decoration: line-through;
        }
        .count {
            margin-left: 5px;
        }
        .conutn {
            color: red;
        }
        .in-nav {
            margin-top: 15px;
            width: 420px;
            height: 180px;
        }
        .nav-left {
            float: left;
        }
        .nav-right{
            float: left;
            margin-left: 60px;
        }
        .in-bottom {
            width: 420px;
        }
        .buy {
            font-size: 25px;
            color:#0D3969;
            margin-right: 5px;
        }
        .ncase {
            width: 23px;
            height: 23px;
            line-height: 20px;
            margin-right: 5px;
            margin-bottom: 6px;
        }
        .now {
            width: 200px;
            height: 48px;
            margin-right: 20px;
            background-color: #ebb1a6;
            color: white;
            font-size: 23px;
        }
        .cart {
            width: 200px;
            height: 48px;
            background-color: #ebafb3;
            color: white;
            font-size: 23px;
        }
        .lunbo_box{
            width:650px;
            height: 400px;
            overflow: hidden;
            margin-left: 50px;
            position: relative;
            float: left;
        }
        .lunbo_box .pictures{
            width: 500%;
            height:400px;
            list-style: none;
            position:absolute ;

        }
        .lunbo_box .pictures li a{
            color: rgba(2, 2, 2, 0.69);

        }
        .lunbo_box .pictures li{
            width: 650px;
            height: 400px;
            float: left;
        }
        .pictures li:nth-child(1){
            background: url("img/X1.PNG") no-repeat center;
            background-size: 100% 100%;
        }
        .pictures li:nth-child(2){
            background: url("img/X2.jpg") no-repeat center;
            background-size: 100% 100%;;
        }
        .pictures li:nth-child(3){
            background: url("img/X3.jpg") no-repeat center;
            background-size: 100% 100%;
        }
        .pictures li:nth-child(4){
              background: url("img/X4.jpg") no-repeat center;
              background-size: 100% 100%;
          }
        .pictures li:nth-child(5){
            background: url("img/X5.jpg") no-repeat center;
            background-size: 100% 100%;
        }
        .mark{
            list-style: none;
            position: absolute;
            left: 42%;
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
        .change{
            position: absolute;
            top: 700px;
        }
        .ani1{
            width: 100%;
            height: 671px;
            background: #ffffff;
            overflow: hidden;

        }
        .ani2{
            width: 100%;
            height: 1292px;
            background:#ffffff;
            position: absolute;
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
            $(".mark li").eq(0).css({background:"white"});
            var i=0;
            var w=$(".pictures li").width();
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
                    i=4;
                }
                $(".pictures").css({left:-i*w});
                $(".mark li").eq(i).css({background:"white"});
                $(".mark li").eq(i).siblings().css({background:"rgba(5, 5, 5, 0.87)"});

            })
            $(".right_btn").click(function(){
                i++;

                if(i>4){
                    i=0;
                }
                $(".pictures").css({left:-(i)*w});
                $(".mark li").eq(i).css({background:"white"});
                $(".mark li").eq(i).siblings().css({background:"rgba(5, 5, 5, 0.87)"});


            })
            $(".ani1").mouseenter(function(){

                $(".img1").animate({width:"0px",height:"0px"},2000).$(".img2").animate({width:"1400px",height:"671"},2000);

            })
            $(".ani1").mouseleave(function(){

                $(".img2").animate({width:"0px",height:"0px"},2000).$(".img3").animate({width:"1400px",height:"671"},2000);

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
        <div class="pheader">
            <h3>
                <P>iPhone X</P></h3>
        </div>
        <div class="content">
            <div class="lunbo_box">
                <ul class="pictures">
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
                <ul class="mark">
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
                <div class="left_btn">&lt;</div>
                <div class="right_btn">&gt;</div>
            </div>


            <div class="information">
                <div class="in-top">
                    <p><span class="pid">商品编号：</span><span class="id">fyugjknjnkhu5645123138446</span></p>
                    <p><span class="psp">促销价：</span><span class="sp">￥8188</span></p>
                    <p>
                        <span class="price">定价：</span><span class="price">￥9488</span>
                        <span class="count">折扣 ：</span><span class="conutn">8.6</span><span class="count">折</span>
                    </p>
                </div>
                <div class="in-nav">
                    <p><span class="brand">品牌：</span><span class="brandn">Apple/苹果</span></p>
                    <p><span class="style">电池类型：</span><span class="stylen">不可拆卸</span></p>
                    <p><span class="update">上市时间：</span><span class="updaten">2017-12-28</span></p>
                    <div class="nav-left">
                        <p>
                            <span class="capacity">电池容量：</span><span class="capacityn">4000mah</span>
                        </p>
                        <p>
                            <span class="memory">内存：</span><span class="memoryn">64G</span>
                        </p>
                        <p>
                            <span class="pre">前置：</span><span class="pren">1200万像素</span>
                        </p>
                    </div>
                    <div class="nav-right">
                        <p>
                            <span class="core">核心数：</span><span class="coren">8</span>
                        </p>
                        <p>
                            <span class="system">操作系统：</span><span class="systemn">iOS 11</span>
                        </p>
                        <p>
                            <span class="post">后置：</span><span class="postn">1200万+2000万像素</span></p>
                    </div>
                </div>
                <div class="in-bottom">
                    <p><span class="buy">我要买：</span><input type="text" class="ncase" value="1"><span class="buy">件</span></p>
                    <p><button class="now">立即购买</button><button class="cart">加入购物车</button></p>
                </div>
            </div>
        </div>

    </div>
    <div class="change">
        <div class="ani1">
                    <img src="img/X11.jpg" class="img1">
                    <img src="img/X12.jpg" class="img2" width="1400px">
                    <img src="img/X11.jpg" class="img3" width="1400px">
        </div>
        <div class="ani2">
            <img src="img/XSP.png">
            <img src="img/OLED.png">
            <img src="img/JS.png">
            <img src="img/SXT.png">
            <img src="img/CXKJ.png">
            <img src="img/ZRSS.png">
            <img src="img/MPHZ.png">
        </div>
        
    </div>
</div>
</body>

  </body>
</html>
