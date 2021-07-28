<%@include file="header.jsp"%>
<%
String status="";
String alertStatus="";
String qry="";
String tenderName="";
String tenderDetail="";
String tenderOpenDate="";
String tenderCloseDate="";
String criteria="";
String rules="";
String setdate="";
String contactEmail="";
String contactNumber="";
try
{
String id=request.getParameter("id");
qry="select * from tender where tid='"+id+"'";
ResultSet rs=con.getRecord(qry);
if(rs.next())
{
tenderName=rs.getString("tname");
tenderOpenDate=rs.getString("topendate");
tenderCloseDate=rs.getString("tclosedate");
tenderDetail=rs.getString("tdetail");
criteria=rs.getString("criteria");
rules=rs.getString("rules");
contactEmail=rs.getString("contactemail");
contactNumber=rs.getString("contactnumber");
}
if(request.getParameter("btn1")!=null)
{
tenderName=request.getParameter("tname");
tenderDetail=request.getParameter("tdetail");
tenderOpenDate=request.getParameter("topendate");
tenderCloseDate=request.getParameter("tclosedate");
criteria=request.getParameter("criteria");
rules=request.getParameter("rules");
contactEmail=request.getParameter("contactemail");
contactNumber=request.getParameter("contactnumber");
qry="update tender set tname='"+tenderName+"',tdetail='"+tenderDetail+"',topendate='"+tenderOpenDate+"',tclosedate='"+tenderCloseDate+"',criteria='"+criteria+"',rules='"+rules+"',contactemail='"+contactEmail+"',contactnumber='"+contactNumber+"' where tid='"+id+"'";
String result=con.execute(qry);
if(result.equals("success"))
{
status="Tender Updated Successfully";
alertStatus="alert-success";
}
else
{
status=result;
alertStatus="alert-danger";
}
}
}catch(Exception e)
{
 status="Error in code "+e;
}
%>
<div class="row">
<%@include file="sidebar.jsp"%>
<div class="col-md-10 col-sm-12">
<h3 class="mt-1 p-2 bg-dark text-light">Tender Update Panel</h3>
<form class="form" id="frm" name="frm" action="" method="post">
<div class="form-row">
<div class="form-group col-md-6">
<label for="tname">Tender name</label>
<input type="text" id="tname" name="tname" class="form-control" value="<%=tenderName%>" placeholder="Tender name"/>
</div>
</div><!--form row ends here-->
<div class="form-row">
<div class="form-group col-md-6">
<label for="tdetail">Details</label>                
<textarea id="tdetail" name="tdetail" class="form-control" row="4" placeholder="Detail"><%=tenderDetail%></textarea>
</div>    
</div>
<!--form row ends here-->
<div class="form-row">
<div class="form-group col-md-3">
<label for="topendate">Tender open date</label>
<input type="text" id="topendate" name="topendate" class="form-control" value="<%=tenderOpenDate%>" placeholder="Tender open date"/>
</div>
<div class="form-group col-md-3">
<label for="tclosedate">Tender close date</label>
<input type="text" id="tclosedate" name="tclosedate" class="form-control" value="<%=tenderCloseDate%>" placeholder="Tender close date"/>
</div>
</div><!--form row ends here-->
<div class="form-row">
<div class="form-group col-md-3">
<label for="criteria">Criteria</label>
<input type="text" id="criteria" name="criteria" class="form-control" value="<%=criteria%>" placeholder="Criteria"/>
</div>
<div class="form-group col-md-3">
<label for="rules">Rules</label>
<input type="text" id="rules" name="rules" class="form-control" value="<%=rules%>" placeholder="Rules"/>
</div>
</div><!--form row ends here-->
<div class="form-row">
<div class="form-group col-md-6">
<label for="contactemail">Contact email</label>
<input type="text" id="contactemail" name="contactemail" class="form-control" value="<%=contactEmail%>" placeholder="Contact email"/>
</div>
</div><!--form row ends here-->
<div class="form-row">
<div class="form-group col-md-6">
<label for="contactnumber">Contact number</label>
<input type="text" id="contactnumber" name="contactnumber" class="form-control" value="<%=contactNumber%>" placeholder="Contact number"/>
</div>
</div><!--form row ends here-->
<input type="submit" id="btn1" name="btn1" value="Update" class="btn btn-primary"/>
</form>
<br>
<div class="p-2 <%=alertStatus%>">
<%=status%>
</div>
<br>
</div>
</div><!--row ends here-->
<%@include file="footer.jsp"%>