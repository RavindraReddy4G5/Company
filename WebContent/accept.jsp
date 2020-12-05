<%@ page import="java.sql.*" %>
<%
Connection con=null;
PreparedStatement pst=null;
Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost:1432/divya";
String user="root";
String pwd="root";
con=DriverManager.getConnection(url,user,pwd);
int id=Integer.parseInt(request.getParameter("id"));
String name=(String)session.getAttribute("name");
pst=con.prepareStatement("Update leaves set status=?,manager_name=? where hid=?");
pst.setString(1,"Accepted");
pst.setString(2,name);
pst.setInt(3,id);
int x=pst.executeUpdate();
if(x!=0)
	response.sendRedirect("view_leaves_appointment.jsp?msg=accepted");
%>
