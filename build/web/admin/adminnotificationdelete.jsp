<%@page import="connection.Connectionclass;"%>
<%
    Connectionclass con=new Connectionclass();
try
{
    String id=request.getParameter("id");
    String qry="delete from notification where id='"+id+"'";
    String result=con.execute(qry);
    if(result.equals("success"))
    {
      response.sendRedirect("adminnotificationlist.jsp");
    }
    
}catch(Exception e)
{
out.println("Error in code "+e);
}
%>