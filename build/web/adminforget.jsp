<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="javax.servlet.http.HttpSession;"%>
<%@page import="java.util.*;" %>
<%@page import="java.sql.*;" %>
<%@page import="connection.Connectionclass;"%>
<%Connectionclass con=new Connectionclass();
String status="";
String alertStatus="";%>
<%
    if(request.getParameter("btn1")!=null)
{
    String email=request.getParameter("email");
    String secquest=request.getParameter("secquest");
    String secans=request.getParameter("secans");
    String qry="select * from login where email='"+email+"' and secquest='"+secquest+"'";
    ResultSet rs=con.getRecord(qry);
    if(rs.next())
    {
        status="User name :"+rs.getString("username");
        status+="Password : "+rs.getString("password");
        alertStatus="alert-success";
    }
    else
    {
        status="Invalid Information";
        alertStatus="alert-danger";
    }
}
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forget User page</title>
    </head>
    <body>
            <div class="container">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <h2 class="display-4 font-weight-normal">Member Login Panel</h2>
                    <form class="form" id="frm" name="frm" action="" method="post">
                        <div class="form-group">
                            <label for="email">Register Email</label>
                            <input type="text" id="email" name="email" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label for="secquest">Security Question</label>
                            <input type="text" id="secquest" name="secquest" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label for="secans">Security Answer</label>
                            <input type="text" id="secans" name="secans" class="form-control"/>
                        </div>

                        <div class="form-group">
                            <input type="submit" id="btn1" name="btn1" class="btn btn-dark" value="submit"/>
                            <a href="adminlogin.jsp" class="btn btn-info">Back to login</a>
                        </div>
                    </form>
                    <div class="alert <%=alertStatus%>">
                        <h5><%=status%></h5>
                    </div>
                </div>
                    <div class="col-md-3"></div>
                </div><!--row ends here-->
            
        </div>
    </body>
</html>
