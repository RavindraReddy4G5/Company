<!DOCTYPE html>
<html>
<body bgcolor="red">
<br>
<center><h1>WELCOME TO LEAVES PORTAL</h1></center>
<br>
<a href="employee_profile.jsp">Profile</a> |
<a href="index.html">Logout</a> 
<form action="apply_appointment.jsp" align="center">
<table>
<tr>
<td>Employee Name</td>
<td>:</td>
<td><input type="text" name="name" placeholder="Enter name"></td>
</tr>
<tr>
<td>Email id</td>
<td>:</td>
<td><input type="email" name="email" placeholder="Enter email"></td>
</tr>
<tr>
<td>Mobile Number</td>
<td>:</td>
<td><input type="number" name="phone" placeholder="Enter mobile number"></td>
</tr>
<tr>
<td>Select Department</td>
<td>:</td>
<td><select name="department">
<option value="Senior Analyst">Senior Analyst</option>
<option value="Junior Analyst">Junior Analyst</option>
<option value="Senior Developer">Senior Developer</option>
<option value="Junior Developer">Junior Developer</option>
</select></td>
</tr>
<tr>
<td>No.Of.Leaves</td>
<td>:</td>
<td><input type="number" name="leaves" placeholder="Enter number of leaves"></td>
</tr>
<tr>
<td>Enter starting Date</td>
<td>:</td>
<td><input type="date" name="date" placeholder="Enter date"></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value ="Apply"></td>
<td></td>
</tr>
</table>
</form>
</body>
</html>