<%@page import="connection.Connectionclass;"%>
<%
    Connectionclass con=new Connectionclass();
try
{
    String id=request.getParameter("id");
    String qry="delete from services where svid='"+id+"'";
    String result=con.execute(qry);
    if(result.equals("success"))
    {
      response.sendRedirect("adminservicelist.jsp");
    }
    
}catch(Exception e)
{
out.println("Error in code "+e);
}
%>