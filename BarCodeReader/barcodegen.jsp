<%@include file="aheader.jsp"%>
<%@page import="java.sql.*,java.util.*,java.text.*"%>
<%@page import="databaseconnection.*"%>
<%@page import="com.itextpdf.text.DocumentException"%>
<%@page import="com.itextpdf.text.pdf.Barcode128"%>
<%@page import="pdf.*"%>
<html>
<head>
<title></title>

</head>

<body>
<%
String vno=request.getParameter("vno");

try
{

	BarCode128 barcode123=new BarCode128();

	barcode123.genBarCode128(vno,vno);
	
	System.out.println("Barcode Generated....!");

	Connection con=databasecon.getconnection();
	Statement st=con.createStatement();
	int rs=st.executeUpdate("update vehicleregistration set status_='YES' where vno='"+vno+"' ");
	if(rs!=0)
	{
		System.out.println("Status Updated....");
	}


response.sendRedirect("status.jsp?m=success");
}
catch(Exception e1)
{
	System.out.println(e1);

out.println(e1.getMessage());
}


%>
</body>
</html>


<%@ include file="footer.jsp"%>