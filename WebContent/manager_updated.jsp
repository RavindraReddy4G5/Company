<%@ page import="java.sql.*" %>
<%
Connection con=null;
PreparedStatement pst=null;
Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost:1432/divya";
String user="root";
String pwd="root";
con=DriverManager.getConnection(url,user,pwd);
String name=request.getParameter("name");
String mail=request.getParameter("mail");
int age=Integer.parseInt(request.getParameter("age"));
long mobile=Long.parseLong(request.getParameter("phone"));
String gender=request.getParameter("gender");
String password=request.getParameter("password");
String department=request.getParameter("department");
int id=Integer.parseInt(request.getParameter("id"));
String sql="update manager set name=?,emailid=?,age=?,phonenumber=?,gender=?,password=?,department=? where id=?";
pst=con.prepareStatement(sql);
pst.setString(1, name);
pst.setString(2,mail);
pst.setInt(3,age);
pst.setLong(4, mobile);
pst.setString(5,gender);
pst.setString(6,password);
pst.setString(7,department);
pst.setInt(8, id);
int x=pst.executeUpdate();
if(x!=0)
	response.sendRedirect("manager_profile.jsp?msg=updated");
%>