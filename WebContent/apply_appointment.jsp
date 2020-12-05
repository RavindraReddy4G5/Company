<%@ page import="java.sql.*" %>
<html>
<center>
<h2> Apply Appointment for Leave</h2>
</center>
<body bgcolor="grey">
<%
Connection con=null;
PreparedStatement pst=null;
Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost:1432/divya";
String user="root";
String pwd="root";
con=DriverManager.getConnection(url,user,pwd);
String name=request.getParameter("name");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String department=request.getParameter("department");
int no_of_leaves=Integer.parseInt(request.getParameter("leaves"));
String leave_begin_date=request.getParameter("date");
pst=con.prepareStatement("insert into leaves(name,emailid,phonenumber,department,no_of_leaves,leave_begin_date) values(?,?,?,?,?,?)");
pst.setString(1,name);
pst.setString(2,email);
pst.setString(3,phone);
pst.setString(4,department);
pst.setInt(5,no_of_leaves);
pst.setString(6,leave_begin_date);
int x=pst.executeUpdate();
if(x!=0)
	response.sendRedirect("employee_profile.jsp?msg=applied_Holidays");
%>