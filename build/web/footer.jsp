
</body>
<%@page import="java.sql.*"%>
<%@page import="connection.Connectionclass;"%>
<%Connectionclass con3=new Connectionclass();%>
<%
    ResultSet rs2=con3.getRecord("select * from companysetup");
    if(rs2.next())
    {}
%>

<footer class="container-fluid bg-dark text-light">
    <div class="row p-2 m-0">
        <div class="col-md-4">
            
        </div>
        <div class="col-md-2">
            <h5>Link Area 1</h5>
            <h6><a href="">Home</a></h6>
            <h6><a href="">About Us</a></h6>
            <h6><a href="">Gallary</a></h6>
            <h6><a href="">Service</a></h6>
            <h6><a href="">Contact Us</a></h6>
        </div>
        <div class="col-md-2">
            <h5>Link Area 2</h5>
            <h6><a href="">Home</a></h6>
            <h6><a href="">About Us</a></h6>
            <h6><a href="">Gallary</a></h6>
            <h6><a href="">Service</a></h6>
            <h6><a href="">Contact Us</a></h6>
        </div>
        <div class="col-md-4">
            <h4>Contact With Us</h4>
            <h6>Contact Email 1 : <%=rs2.getString("email1")%></h6>
            <h6>Contact Email 2 : <%=rs2.getString("email2")%></h6>
            <h6>Contact Mobile 1 : <%=rs2.getString("mobile1")%></h6>
            <h6>Contact Mobile 1 : <%=rs2.getString("mobile2")%></h6>
            <h6>Contact Address : <%=rs2.getString("address")%></h6>
        </div>
    </div>
</footer>
</html>