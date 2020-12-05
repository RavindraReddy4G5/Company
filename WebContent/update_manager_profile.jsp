<%@ page import="java.sql.*" %>
<html>
<center>
<h2> Update Manager Profile</h2>
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
int id=Integer.parseInt(request.getParameter("id"));
pst=con.prepareStatement("Select * from manager where id=?");
pst.setInt(1,id);
ResultSet set=pst.executeQuery();
if(set.next()){
%>
<form action="./manager_updated.jsp"  align="center">
<table align="center">
<tr>
<td>Id</td>
<td>:</td>
<td><input type="hidden" name="id" value="<%=set.getInt("id") %>" ></td>
</tr>
<tr>
<td>Name</td>
<td>:</td>
<td> <input type="text" name="name" value="<%=set.getString("name") %>"></td>
</tr>
<tr>
<td>Mail id</td>
<td>:</td>
<td><input type="email" name="mail" value="<%=set.getString("emailid") %>" /></td>
</tr>
<tr>
<td>Age </td>
<td>:</td>
<td><input type="number" name="age" value="<%=set.getInt("age")%>" /></td>
</tr>
<tr>
<td>phoneNumber</td>
<td>:</td>
<td> <input type="number" name="phone" value="<%=set.getInt("phonenumber") %>"></td>
</tr>
<tr>
<td>Gender</td>
<td>:</td>
<td><input type="radio"  name="gender" value="male" checked="<%=set.getString("gender") %>"required>male
<input type="radio"  name="gender" value="female" required>female</td>
</tr>
<tr>
<td>Password</td>
<td>:</td>
<td><input type="text" name="password" value="<%=set.getString("password") %>"/></td>
</tr>
<tr>
<td>Department</td>
<td>:</td>
<td><select name="department">
<option value="<%=set.getString("department")%>"><%=set.getString("department")%></option>
<option value="Development">Development</option>
<option value="Testing">Testing</option>
<option value="Designing">Designing</option>
<option value="Management">Management</option>
</select></td>
</tr>
<tr>
<td></td>
<td><input type="submit" name="Update" style="color:black"/></td>
</tr>

<%} %>
</table>
</form>
</body>
</html>