<%@page import="connection.Connectionclass;"%>
<%
Connectionclass con=new Connectionclass();
try
{
String id=request.getParameter("id");
String qry="delete from tender where tid='"+id+"'";
String result=con.execute(qry);
if(result.equals("success"))
{
response.sendRedirect("admintenderlist.jsp");
}
else
{
out.println(result);
}
}catch(Exception e)
{
out.println("Error in code "+e);
}
%>