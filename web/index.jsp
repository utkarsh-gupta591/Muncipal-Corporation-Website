

<%@include file="header.jsp" %>
<%@page import="connection.Connectionclass;"%>
<%con1=new Connectionclass();%>
<%
    rs=con1.getRecord("select * from companysetup");
    if(rs.next())
    {
%>
<div class="row">
    <%@include file="sidebar1.jsp" %>
    <div class="col-md-8 col-sm-12 p-4">
        <h4>About Us</h4>
            <%=rs.getString("cpabout")%>
            <%}%>
    </div>
    <%@include file="sidebar2.jsp" %>
</div>
    <%@include file="footer.jsp" %>