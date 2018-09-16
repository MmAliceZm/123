<%@ page language="java" import="java.util.*,java.sql.*,beans.Cart,beans.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head  lang="en">
    <meta charset="UTF-8">
    <base href="<%=basePath%>">
    
    <title>My JSP 'showcart.jsp' starting page</title>
    
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
        .tab{
            margin: 40px auto;
            height: 40px;
        }
        .tab div{
            display: none;
        }
        .tab #tb1{
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
            top: 80px;
            overflow: hidden;
        }

        .center_top {
            width: 1000px;
            height: 80px;
            background: rgba(255, 248, 249, 0.82);
            border-radius: 2px;
            box-shadow: 1px 1px 2px rgba(107, 102, 103, 0.80);
            margin: 100px auto 10px auto;
            overflow: hidden;
            /*clear: both;*/
        }
        .center_top_text{
            font-size: 30px;
            margin: 10px;
            line-height: 80px;
            text-align: left;
        }

        .center_mid{
            width: 1000px;
            height: 700px;
            background: rgba(255, 248, 249, 0.82);
            border-radius: 2px;
            box-shadow: 1px 1px 2px rgba(107, 102, 103, 0.80);
            margin: 10px auto;
            overflow: hidden;
        }
        .box1{
            width: 1000px;
            padding: 10px;
            /*float: left;*/

        }
        .box2{
            width: 1000px;
            padding: 10px;
            position: relative;
            /*overflow: hidden;*/
            /*float: left;*/
            /*clear: both;*/

        }
        .goods{
            width:980px;
            height: 227px;
            border-bottom: 1px solid gray;
            /*float: left;*/
            overflow: hidden;
            /*position: absolute;*/

        }
        .center_right{
            width: 780px;
            float: left;
        }

        .at{
            display: block;
            text-decoration: none;
            color: #000000;
            font-size: 20px;
            margin-top: 10px;
            width: 300px;
            float: left;

        }
        .at:hover{
            color: blue;
        }
        .pic{
            float: left;
        }
        .number{
            width: 30px;
            height: 30px;
            line-height: 30px;
            text-align: center;
            margin-right: 5px;
            margin-bottom: 6px;
            font-size: 15px;
            box-shadow: 0px 0px 1px gray inset;
            border-radius: 5px;
        }
        .crt{
            width: 780px;
            height: 80px;
            border-bottom: 1px solid gray;
            float: left;
        }
        .at{
            width: 300px;
            margin-left: 5px;
        }
        .pt{
            width: 400px;
            float: right;
            line-height: 80px;

        }
        .crb_text{
            color: gray;
            line-height: 30px;
            margin-left: 5px;
        }
        .crb_a1{
            color: blue;
            /*float: right;*/
            text-decoration: none;
            height: 150px;
            line-height: 150px;
            text-align: right;
        }
        .crb_a1:hover{
            cursor: pointer;
        }
        .crb_a2{
            color: blue;
            text-decoration: none;
            height: 150px;
            line-height: 150px;
            text-align: right;
        }
        .crb_a2:hover{
            cursor: pointer;
        }


        .crb_text_m{
            color: gray;
            line-height: 30px;
            float: right;
        }
        .mask1{
            width:980px;
            height: 227px;
            background-color: rgba(199, 236, 255, 0.74);
            overflow: hidden;
            display: none;
            position: absolute;
            left: 190px;
            top: 200px;


        }
        .mask2{
            width:980px;
            height: 227px;
            background-color: rgba(199, 236, 255, 0.74);
            overflow: hidden;
            display: none;
            position: absolute;
            left: 10px;
            /*top:240px;*/
            top: 10px;

        }
        .delete{
            font-size: 30px;
            font-weight: 900;
            line-height: 227px;
            text-align: center;
        }
        .t1{
            font-size: large;
            /*float: right;*/
            text-align: right;
            margin-right: 10px;
            font-weight: 700;


        }
        .m{
            overflow: hidden;
        }
        .s1{
            font-size: large;
            color: #ffffff;
            background-color: blue;
            width: 90px;
            height: 50px;
            border: none;
            float: right;
            /*text-align: right;*/
            margin: 10px;
            border-radius: 5px;
            box-shadow: 1px 1px 1px blue inset;
        }
        .sc1{
        	border:none;
        	color: blue;
            /*float: right;*/
            text-align: right;
            font-size: large;
           

        }
        .sc1:hover{
            cursor: pointer;
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

    <script>
        $(function(){
            $(".sc1").click(function(){
                $(".mask1").show(300);
                $(".box1").hide(1000);
            })
        })
    </script>

    <script>
        $(function(){
            $(".crb_a2").click(function(){
                $(".mask2").show(300);
                $(".box2").hide(1000);
            })
        })
    </script>


  </head>
  
  <body>
   <% 
    
           
             //2 连接 数据库
               Class.forName("com.mysql.jdbc.Driver");
               Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/store", "root", "123456");
              
              String sql="select * from cart where id=?"; 
              PreparedStatement pst=con.prepareStatement(sql);
              Custom custom=(Custom)(session.getAttribute("custom"));
              pst.setInt(1, custom.getId());
          
              ResultSet rs=pst.executeQuery();
          
               List<Cart> list=new ArrayList<Cart>();
               Cart cart=null;
                Iphones iphones=null;
                String iid=null; 
               
                while(rs.next()){  //多个对象 
               
                  cart=new Cart();
                 cart.setCartid(rs.getInt("cartid"));
                  cart.setId(rs.getInt("id"));
                 cart.setQuantity(rs.getInt("quantity"));
              
          
                  iid=rs.getString("iid");
                  String sql_i="select * from iphones where iid = ?";
                  pst=con.prepareStatement(sql_i);
                  pst.setString(1,iid);
                  ResultSet rs_i=pst.executeQuery();
                  rs_i.next();
               
                 iphones=new Iphones();
              iphones.setIid(rs_i.getString("iid"));
              iphones.setIname(rs_i.getString("iname"));
              iphones.setIprice(rs_i.getFloat("iprice"));
              iphones.setIbrand(rs_i.getString("ibrand"));
              iphones.setIcell(rs_i.getString("icell"));
              iphones.setItime(rs_i.getString("itime"));
                  cart.setIphones(iphones) ;
              
              list.add(cart);
         }
         request.setAttribute("clist", list);  
      %>
      
      
      

     
   <div class="box">
    <div class="top">
        <ul class="menu">
            <li><a href="index.html"><img src="img/icon.png" class="icon" width="60px" height="40px"></a></li>
            <li class="d1"><a href="#" rel="tb1"><img src="img/search.png"  class="search" width="50px" height="45px"></a></li>
            <li class="d1"><a href="#" rel="tb2">商品分类</a></li>
            <li>
                <c:if test="${ not empty custom}">
                   <div class='d1'>欢迎<a href="Myhome.jsp">${custom.cname}</a> <a href="Myhome.jsp">个人主页</a></div>
                </c:if>
            </li>
            <li><a href="#">客户服务</a></li>
            <li><a href="#">联系我们</a></li>
        </ul>
        <div class="tab">
            <div id="tb1">
                <form class="form-inline" action="searchGoods.jsp">
                        <input type="text" name="gstr" class="searchText">
                    <input type="submit" id="searchBut" value="搜索">
                </form>
            </div>
        </div>
    </div>
   

    <div class="center">
        <div class="center_top">
            <div class="center_top_text">购物袋内产品</div>
        </div>
        
        
        
       
        
        <div class="center_mid">
 			<c:forEach items="${clist }" var="cart">
            <div class="box1">

                <div class="goods">

                    <div class="pic">
                        <a href="iphone%20X.html"> <img src="img/goodspic_one.jpg"></a>
                    </div>
                    <div class="center_right">
                        <div class="crt">
                            <a href="iphone%20X.html" class="at">${cart.iphones. iname}</a>
                            <div class="pt">
                                RMB:${cart.iphones.iprice }
                                <input type="text" value="${cart.quantity }" class="number">
                                Total RMB：${cart.iphones.iprice*cart.quantity  }
                            </div>
                        </div>
                        <div class="crb">
                            <div class="crb_text">
                                送达日期：有现货
                            </div>
                            <div class="m">
                                <div class="crb_text_m">编号：${iphones.iid }</div>
                            </div>
                            <form action="delete.jsp">
                            
                              <input type="hidden" value="${cart.cartid}" name="cartid"> 
                            
                            <input type="submit" value="删除" class="sc1">
                            
        
                            
                        </div>
                    </div>
                </div>

                <div class="mask1">
                    <div class="delete">删除此商品</div>
                </div>
            </div>
       
     		</c:forEach>
     		
     		
     		<div class="total">

                <div class="t1">
                总计 RMB:<c:set value="0" var="count"/>
                <c:forEach items="${clist }" var="cart">
                     <c:set value="${sum+cart.iphones.iprice*cart.quantity} " var="count"></c:set>
                </c:forEach>
                
                
                  </div>
                <input type="submit" value="结账" class="s1">
            </div>
     		
     		
      </div>  
        
         
    </div>



</div>
   

  </body>
</html>
