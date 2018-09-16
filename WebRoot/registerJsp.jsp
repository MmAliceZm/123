<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
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
<!-- jsp： （Java server page）本质是Java 采用HTML与Java代码联编混合的语言
Java代码写在<% %>之间
后台获取前台数据 使用name属性
请求方式method：get 默认 信息会暴露在地址栏中
            post 不会暴露
Java代码出现错误会出现500错误

-->
  </head>
  
  <body>
    <%
    //解决中文乱码
    request.setCharacterEncoding("utf-8");
    //  获取表单信息；
     String u= request.getParameter("Cname");
     String e= request.getParameter("Cemail");
     String s= request.getParameter("Csex");
     String p= request.getParameter("Cpassword");
     String n= request.getParameter("Cnum");
    
       //连接数据库
       /*步骤
              a.导入驱动jar包，右键jar包，buildpath--add to build path
              b.加载驱动包
              c.建立连接，设置数据库参数
              d.创建statement对象(车)
              e.执行sql语句
            */
             Class.forName("com.mysql.jdbc.Driver"); //加载驱动包 
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/store","root","123456");/*协议名  账号 密码*/
            System.out.print(con+"连接成功！");
           
            String sql="insert into custom(Cname,Cemail,Csex,Cpassword,Cnum) values(?,?,?,?,?)";
            PreparedStatement pst=con.prepareStatement(sql);//创建statement对象
            pst.setString(1, u);
            pst.setString(2, e);
            pst.setString(3, s);
            pst.setString(4, p);
            pst.setString(5, n);
           int res= pst.executeUpdate();//执行SQL命令
           if(res!=0){
               out.print("<a href='login.html'>注册成功！</a>");
              
           }else{
               out.print("sorry,注册失败！");
           }
            
   %>
  </body>
</html>
