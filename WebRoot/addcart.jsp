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
    
    <title>My JSP 'cart.jsp' starting page</title>
    
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
            String id=request.getParameter("id");
            String iid=request.getParameter("iid");
            String num=request.getParameter("num");
            //数据类型转换
             int id_=Integer.parseInt(id);
             int num_=Integer.parseInt(num);
            
           //2 连接数据库，向cart表插入数据
            Class.forName("com.mysql.jdbc.Driver"); //加载驱动包 
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/store","root","123456");
           
           //插入记录购物车判断是否添加过该商品，如果没有，增加一条记录，如果有，则增加数量
           String sql="select* from cart where iid=?";
            PreparedStatement pst=con.prepareStatement(sql);//创建statement对象 
           pst.setString(1, iid);
           ResultSet rs=pst.executeQuery();
           int res=0;//执行sql的结果；
           if(rs.next()){
              String sql_up="update cart set quantity=quantity+? where iid=?";
              pst=con.prepareStatement(sql_up);
              pst.setInt(1,num_);
              pst.setString(2,iid );
              
           }else{
               String sql_in="insert into cart(id,iid,quantity) values(?,?,?)";
               pst=con.prepareStatement(sql_in);
               pst.setInt(1, id_);
               pst.setString(2, iid);
               pst.setInt(3, num_);
           }
           res=pst.executeUpdate();
            if(res!=0){
                    out.print("<a href='index.jsp'>添加成功！</a>");
               }else{
                    out.print("<a href='index.jsp'>操作失败！</a>");
               }
        
         %>              
    </c:if>
    
  </body>
</html>
