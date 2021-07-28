<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="javax.servlet.http.HttpSession;" %>
<%@page import="java.sql.*;" %>
<%@page import="java.util.*;"%>
<%@page import="connection.Connectionclass;"%>
<%
String status="";
String alertStatus="";%>
<%
if(request.getParameter("btn1")!=null)
{
    
    try
    {
        Connectionclass con=new Connectionclass();
        String username=request.getParameter("username");
            String pwd=request.getParameter("password");
       
    String qry="select * from login where username='"+username+"'and password='"+pwd+"'";
    ResultSet rs=con.getRecord(qry);
    
     if(rs.next())
    {
        session.setAttribute("userid",rs.getString(1));
        session.setAttribute("username", rs.getString(2));
        response.sendRedirect("admin/adminprofile.jsp");
    }
    else
    {
        status="Invalid username or password";
        alertStatus="alert-danger";
    }
    }catch(NullPointerException e)
    {
        out.println("Exception "+e);
    }
    
}
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/popper.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <h2 class="display-4 font-weight-normal">Member Login Panel</h2>
                    <form class="form" id="frm" name="frm" action="" method="post">
                        <div class="form-group">
                            <lable for="username">Enter username</lable>
                            <input type="text" id="username" name="username" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <lable for="password">Enter password</lable>
                            <input type="password" id="password" name="password" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <input type="submit" id="btn1" name="btn1" class="btn btn-dark"/>
                            <a href="adminforget.jsp" class="btn btn-info">Forget</a>
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
