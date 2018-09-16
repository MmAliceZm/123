<%@ page language="java" import="java.util.*,java.sql.*,beans.Custom" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'loginJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<!-- -->
  </head>
  
  <body>
<%
//解决中文乱码 
request.setCharacterEncoding("utf-8");
//获取表单提交的信息
String u=request.getParameter("uname");
String p=request.getParameter("psw");
//out.print(u+"---"+p);
//连接数据库
        Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/store","root","123456");
      String sql="select*from custom where Cname=? and Cpassword=?";
      PreparedStatement pst= con.prepareStatement(sql);
      pst.setString(1, u);
      pst.setString(2, p);
      Custom custom=null;
      ResultSet rs= pst.executeQuery();//查询结果是结果集
      if(rs.next()){
             System.out.print("登录成功！");
             custom=new Custom();
             custom.setId(rs.getInt("id"));
             custom.setCname(rs.getString("cname"));
             custom.setCpassword(rs.getString("cpassword"));
             
             
            //登录成功，跳转到主页
            session.setAttribute("custom", custom);//在session中存放用户名
    
            request.getRequestDispatcher("index.jsp").forward(request, response);
       }else{
            out.print("登录失败<a href='login.html'>请注册账号</a>");
}
 %>
  </body>
</html>
