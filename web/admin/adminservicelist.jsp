<%@include file="header.jsp"%>
<%
String table="";
String qry="select svid,svname,svremark,setdate from services order by svid";
if(request.getParameter("btn1")!=null)
    {
        String search=request.getParameter("tsearch");
        qry="select svid,svname,svremark,setdate from services where svname like '%"+search+"%'";
    }
table=con.getTable(qry, "adminserviceupdate.jsp", "adminservicedelete.jsp", "update", "Delete", "svid","service");
%>
<div class="row">
    <%@include file="sidebar.jsp" %>
    <div class="col-md-10 col-sm-12">
        <h3 class="mt-1 p-2 bg-dark text-light">Services List Panel</h3>
        <form id="frm" name="frm" action="" method="post">
            <div class="form-row">
                   <div class="form-group col-md-6">
            <input type="text" id="tsearch" name="tsearch" placeholder="Search" class="form-control"/>
        </div>
        <div class="form-group">
            <input type="submit" id="searchButton" name="searchButton" class="btn btn-primary" />
            <a href="adminserviceadd.jsp" class="btn btn-primary">Add</a>
        </div>
            </div>
        </form>
        <%=table%>
    </div>
</div>
<%@include file="footer.jsp" %>