<%@ page import="java.sql.*" %>
<html>
<body bgcolor="blue">
<Center><h1>Manager Portal </h1></Center>
<a href="manager_Reg.html"><h3 style="text-align:left;">&#9998New Manager Register|</h3></a>
<a href="manager_profile.jsp">View Profile|</a>
<a href="view_leaves_appointment.jsp">VIEW THE REQUESTS |</a>
<a href="index.html">Home</a>
<table border="2" align="center" width="600" height="400" cellpadding="20">
<tr>
<th>id</th>
<th>Name</th>
<th>emailid</th>
<th>age</th>
<th>phonenumber</th>
<th>gender</th>
<th>password</th>
<th>department</th>
<th>Action</th>
</tr>
<%
Connection connection=null;
PreparedStatement pst=null;
Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost:1432/divya";
String user="root";
String pwd="root";
connection=DriverManager.getConnection(url,user,pwd);
String mail=(String)session.getAttribute("setmail");
String password=(String)session.getAttribute("setpwd");
int id=(Integer)session.getAttribute("id");
String sql="select * from manager where id=?";
pst=connection.prepareStatement(sql);
pst.setInt(1, id);
ResultSet set=pst.executeQuery();
while(set.next())
{
%>
<tr>
<td><%=set.getInt(1) %> </td>
<td><%= set.getString(2) %></td>
<td> <%= set.getString(3) %></td>
<td><%=set.getInt(4) %> </td>
<td><%=set.getInt(5) %> </td>
<td> <%= set.getString(6) %></td>
<td> <%= set.getString(7) %></td>
<td> <%= set.getString(8) %></td>
<td><a href="update_manager_profile.jsp?id=<%=set.getInt(1)%>">Update</a></td>
</tr>
<%} %>
</table>
</body>
</html>