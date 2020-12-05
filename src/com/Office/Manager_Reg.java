package com.Office;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/Manager_Reg")
public class Manager_Reg extends HttpServlet{
	Connection con=null;
	PreparedStatement ps=null;
	public void init(ServletConfig config)  {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		String url="jdbc:mysql://localhost:1432/divya";
		String username="root";
		String password="root";
		try {
			con=DriverManager.getConnection(url,username,password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		
		int id=Integer.parseInt(request.getParameter("id"));
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		int age=Integer.parseInt(request.getParameter("age"));
		int phonenumber=Integer.parseInt(request.getParameter("phone"));
		String gender=request.getParameter("gender");
		String password=request.getParameter("password");
		String department=request.getParameter("department");
		
		PrintWriter pw=response.getWriter();
		
		String sql="insert into manager(id,name,emailid,age,phonenumber,gender,password,department) values(?,?,?,?,?,?,?,?)";
		
		try {
			ps=con.prepareStatement(sql);
			ps.setInt(1,id);
			ps.setString(2,name);
			ps.setString(3,email);
			ps.setInt(4,age);
			ps.setInt(5,phonenumber);
			ps.setString(6,gender);
			ps.setString(7,password);
			ps.setString(8,department);
			
			
			
			
			pw.println("<html><body bgcolor='green'><center><h1> ");
			int x=ps.executeUpdate();
			if(x!=0)
			{
				pw.println("manager Registered Successfully");
			}
			else
				pw.println("manager Registration Failed");
			
			pw.println("</h1></center></body></html>");
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}  

	
}
