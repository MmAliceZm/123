<%@ page language="java" import="java.util.*,java.sql.*,beans.Iphones" pageEncoding="utf-8"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
 <head lang="en">
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    
    
    <title>My JSP 'searchGoods.jsp' starting page</title>
    
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
        .ddd{
            width: 1000px;
            margin: 150px auto;
            background-color:rgba(255, 211, 197, 0.50);
            border-radius: 2px;
            box-shadow: 1px 1px 2px rgba(107, 102, 103, 0.50);
            height: 200px;
            text-align:center;

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
  
  <%
     	//1.获取表单提交的信息
               String s=request.getParameter("gstr");
              //解决中文乱码  --get请求   
              String str= new String(s.getBytes("iso-8859-1"),"utf-8");
              //out.print(str);
             //2 连接 数据库
               Class.forName("com.mysql.jdbc.Driver");
               Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/store", "root", "123456");
               Statement  st=con.createStatement();
              String sql="select * from iphones where Iname like '%"+str+"%'"; 
              
               ResultSet rs=st.executeQuery(sql);
                
                System.out.print(sql);  
                
              List<Iphones> list=new ArrayList<Iphones>();//创建list集合同于存放多个产品对象
               Iphones iphones=null;//产品对象 
              while(rs.next()){  //多个对象 
                    iphones=new Iphones();
                   iphones.setIid(rs.getString("iid"));
                   iphones.setIname(rs.getString("iname"));
                   iphones.setIprice(rs.getFloat("iprice"));
                   iphones.setIbrand(rs.getString("ibrand"));
                   iphones.setIcell(rs.getString("icell"));
                   iphones.setItime(rs.getString("itime"));
                   list.add(iphones);
              }
              request.setAttribute("glist", list);
     %>
      
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
  </div>
         
      <table class="ddd">
         <tr> <td>商品ID</td> <td>商品名称</td> <td>商品价格</td><td>品牌</td><td>电池类型</td><td>发布时间</td><td>操作</td></tr>
      <c:forEach items="${glist }" var="iphones">
          <tr>
             <td>${iphones.iid }</td>
             <td>${iphones. iname}</td>
             <td>${iphones.iprice }</td>
             <td>${iphones.ibrand }</td>
             <td>${iphones.icell }</td>
             <td>${iphones.itime }</td>
             <td>
                <form action="addcart.jsp">
                  <input type="hidden" value="${custom.id}" name="id">
                  <input type="hidden" value="${iphones.iid }" name="iid">
                                                               购买数量<input type="text" name="num">
                  <input type="submit" value="加入购物车">
                </form>
             </td>
          </tr>
           
      </c:forEach>
     </table> 
      
  </body>
</html>
