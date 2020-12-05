<html>
<body bgcolor="lightskyblue">
<br>
<center><h1>WELCOME TO MANAGER HOLIDAY APPOINTMENT PAGE</h1></center>
<br>
<a href="Manager_Home.html">Home</a> |
<a href="manager_profile.jsp">Profile</a> |
<a href="index.html">Logout</a> 
<br><br><br>
<table border="2" width="700" height="200" cellpadding="20" align ="center">
<tr><td>Employee Name</td><td>Emailid</td><td>Phone Number</td><td>Department</td><td>no_of_leaves</td><td> leave_begin_date</td><td>Status</td>
<td>Manager Name</td><td>Action</td></tr>
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
<% if(rs.getString("status").equalsIgnoreCase("Accepted")) {%>
<td>Accepted</td>
<%} else {%>
<td><a href="accept.jsp?id=<%=rs.getInt(1) %>">Accept</a></td>
<%} %>
</tr>
<%} %>
</table>
</body>
</html>