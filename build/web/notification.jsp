<%@include file="header.jsp" %>
<div class="row">
    <%@include file="sidebar1.jsp" %>
    
    <div class="col-md-8 col-sm-12 p-4">
        <h3>Notifications</h3>
        <%
    String qry="select * from notification";
    rs=con1.getRecord(qry);
    while(rs.next())
    {
    %>
        <div class="card my-2">
  <div class="card-body">
    <h4 class="card-title"><%=rs.getString("nottitle")%></h4>
    <h6 class="card-subtitle mb-2 text-muted"><%=rs.getString("notremark")%></h6>
    <p class="card-text"><%=rs.getString("notdetail")%></p>
  </div>
</div>
  <%
    }
    %>
    </div>    
    <%@include file="sidebar2.jsp" %>
</div>
    <%@include file="footer.jsp" %>