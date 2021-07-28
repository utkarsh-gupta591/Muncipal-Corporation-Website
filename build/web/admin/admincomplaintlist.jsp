<%@include file="header.jsp"%>
<%
String table="";
String qry="select cmpid,cmpname,cmpmobile,cmpsubject,cmpmessage from complaint order by cmpid";
if(request.getParameter("btn1")!=null)
{
	String search=request.getParameter("tsearch");
	qry="select cmpid,cmpname,cmpmobile,cmpsubject,cmpmessage from complaint where cmpname like '%"+search+"%'";
}
table=con.getTable(qry,"","","","","cmpid","complaint");
%>
<div class="row">
<%@include file="sidebar.jsp"%>
<div class="col-md-10 col-sm-12">
<h3 class="mt-1 p-2 bg-dark text-light">Complaint List Panel</h3>
<form class="form" id="frm" name="frm" action="" method="post">
<div class="form-row">
<div class="form-group col-md-6">
<input type="text" id="tsearch" name="tsearch" class="form-control" placeholder="Search"/>
</div>
<div class="form-group">
<input type="submit" id="btn1" name="btn1" value="Search" class="btn btn-info"/>
</div>
</div>
</form>
<br>
<%=table%>
</div>
</div>
<%@include file="footer.jsp"%>