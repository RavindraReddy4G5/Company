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
String designation=request.getParameter("designation");
long mobile=Long.parseLong(request.getParameter("phone"));
String gender=request.getParameter("gender");
String password=request.getParameter("password");
String date_of_joining=request.getParameter("date_of_joining");
String department=request.getParameter("department");
int id=Integer.parseInt(request.getParameter("id"));
String sql="update employee set name=?,emailid=?,designation=?,phonenumber=?,gender=?,password=?,date_of_joining=?,department=? where id=?";
pst=con.prepareStatement(sql);
pst.setString(1, name);
pst.setString(2,mail);
pst.setString(3,designation);
pst.setLong(4, mobile);
pst.setString(5,gender);
pst.setString(6,password);
pst.setString(7,date_of_joining);
pst.setString(8,department);
pst.setInt(9, id);
int x=pst.executeUpdate();
if(x!=0)
	response.sendRedirect("employee_profile.jsp?msg=updated");
%>