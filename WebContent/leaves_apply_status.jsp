<html>
<body bgcolor="lightskyblue">
<br>
<center><h1>WELCOME TO leave STATUS PAGE</h1></center>
<br>
<a href="employee_profile.jsp">Profile</a> |
<a href="index.html">Logout</a> 
<br><br><br>

<table border="2" width="700" height="200" cellpadding="20" align ="center">
<tr><td>Employee Name</td><td>Email</td><td>Phone Number</td><td>Department</td><td>no_of_leaves</td><td> leaves_begin_date</td><td>Status</td>
<td>Manager Name</td></tr>
<%@ page import="java.sql.*" %>
<%
Connection con=null;
PreparedStatement pst=null;
Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost:1432/divya";
String user="root";
String pwd="root";
con=DriverManager.getConnection(url,user,pwd);
String department=(String)session.getAttribute("department");
pst=con.prepareStatement("select * from leaves where department=?");
pst.setString(1,department);
ResultSet rs=pst.executeQuery();
while(rs.next()){
%> 
<tr>
<td><%=rs.getString("name") %></td>
<td><%=rs.getString("email") %></td>
<td><%=rs.getString("phone") %></td>
<td><%=rs.getString("department") %></td>
<td><%=rs.getInt("no_of_leaves") %></td>
<td><%=rs.getString("leave_begin_date") %></td>
<td><%=rs.getString("status") %></td>
<td><%=rs.getString("manager_name") %></td>
</tr>
<%} %>
</table>
</body>
</html>