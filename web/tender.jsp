<%@include file="header.jsp"%>
<div class="row">
<%@include file="sidebar1.jsp"%>
<div class="col-md-8 col-sm-12 pt-2 pb-4 border">
<h3>Tenders in progress</h3>
<br>
<%
try
{
String qry="select * from tender order by tid";
rs=con1.getRecord(qry);
while(rs.next())
{
%>
<div class="card mb-4">
<div class="card-header">
<h5>Tender Name : <%=rs.getString("tname")%></h5>
</div>
<div class="card-body">
<h6>Details : <%=rs.getString("tdetail")%></h6>
<h6>Rules : <%=rs.getString("rules")%></h6>
<h6>Criteria : <%=rs.getString("criteria")%></h6>
<h6>Open Date : <%=rs.getString("topendate")%></h6>
<h6>Close Date : <%=rs.getString("tclosedate")%></h6>
</div>
<div class="card-footer">
<p>Published Date : <%=rs.getString("setdate")%></p>
<p>Contact Number : <%=rs.getString("contactnumber")%></p>
<p>Contact Email : <%=rs.getString("contactemail")%></p>
</div>
</div><!--card ends here-->
<%
}
}catch(Exception e)
{
out.println("Error to display tenders");
}
%>
</div>
<%@include file="sidebar2.jsp"%>
</div>
<%@include file="footer.jsp"%>