<%@ include file="header.jsp"%>

<br><br>
<font size="" color="" align="right"><h1>Login for Admin</h1></font>



					<table  cellspacing=20 align="left" ><tr><td>
	                  <%
                                                       String m=request.getParameter("m");
                                                       if(m!=null && m.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Login Fail   !! </blink></font></h3>");
                                                       }
                                               %>
											   </table>
<table align="left">
<tr><td>
<img src="images/Login.gif" width="200" height="175" border="0" alt="">
</td></tr>
</table>
<form method="post" action="alogin.jsp">
	<table  cellpadding=5 cellspacing="5" align="right"><tr><td>

	<tr><td><input type="text" name="uid" required placeholder="Username"><br>
		<tr><td><input type="password" name="pwd" required placeholder="Password" size="20"><br>

			<tr><td>		  <div class="form_settings"><input class="submit" type="submit"  value="Login" /></div><td>

</tr>
</table>
</form>
											   <br><br><br><br><br><br><br><br><br><br><br><br><br>

											   
											   <br><br><br><br><br>



<%@ include file="footer.jsp"%>