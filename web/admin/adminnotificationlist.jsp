<%@include file="header.jsp"%>
<% String status="";
%>
<%
    String qry="select id,nottitle,notsetupdate from notification order by id";
    if(request.getParameter("btn1")!=null)
    {
        String search=request.getParameter("tsearch");
        qry="select id,nottitle,notsetupdate from notification where nottitle like '%"+search+"%'";
    }
        status=con.getTable(qry,"adminnotificationupdate.jsp","adminnotificationdelete.jsp","Update","Delete","id","notification");
    
%>
<div class="row">
    <%@include file="sidebar.jsp"%>
    <div class="col-md-10 col-sm-12">
        <h3 class="mt-1 p-2 bg-dark text-light">Notification List Panel</h3>
        <form class="form" id="frm" name="frm" action="" method="post">
        <div class="form-row">
            <div class="form-group col-md-6">
                <input type="text" id="tsearch" name="tsearch" class="form-control" placeholder="Search"/>
            </div>
            <div class="form-group">
                <input type="submit" id="btn1" name="btn1" value="Search" class="btn btn-info"/>
                <a href="adminnotificationadd.jsp" class="btn btn-primary">Add</a>
            </div>
        </div><!--row ends here-->
        </form>
        <br>
        <%=status%>
    </div>
</div>
    <%@include file="footer.jsp"%>