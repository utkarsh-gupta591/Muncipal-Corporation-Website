<%@include file="header.jsp" %>
<div class="row">
    <%@include file="sidebar1.jsp" %>
    
    <div class="col-md-8 col-sm-12 p-4">
        <h3>Services</h3>
        <%
    String qry="select * from services";
    rs=con1.getRecord(qry);
    while(rs.next())
    {
    %>
        <div class="card">
  <div class="card-body">
    <h4 class="card-title"><%=rs.getString("svname")%></h4>
    <h6 class="card-subtitle mb-2 text-muted"><%=rs.getString("svremark")%></h6>
    <p class="card-text"><%=rs.getString("svdetail")%></p>
  </div>
</div>
  <br>
  <%
    }
    %>
    </div>    
    <%@include file="sidebar2.jsp" %>
</div>
    <%@include file="footer.jsp" %>