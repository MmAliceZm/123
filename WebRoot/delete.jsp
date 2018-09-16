<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'delete.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  
    <c:if test="${empty custom }">
                       请登录 <a href="login.html">登录</a>
    </c:if>
    
    <c:if test="${not empty custom }">
        <%
            //1. 获取表单信息
            
            String cartid=request.getParameter("cartid");
            
            //数据类型转换
             int cartid_=Integer.parseInt(cartid);
            
            
           //2 连接数据库，向cart表插入数据
            Class.forName("com.mysql.jdbc.Driver"); //加载驱动包 
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/store","root","123456");
           
         
           String sql="delete from cart where cartid=?";
           PreparedStatement pst=con.prepareStatement(sql);//创建statement对象 
          
           pst.setInt(1, cartid_);
           int res= pst.executeUpdate();//执行SQL命令
           if(res!=0){
               out.print("<a href='showCart.jsp'>操作成功！</a>");
              
           }else{
               out.print("<a href='showCart.jsp'>sorry,操作失败！</a>");
           }
          
            
         %>              
    </c:if>
    
 
</html>

  </body>
</html>
