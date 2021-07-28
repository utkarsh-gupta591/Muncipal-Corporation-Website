<%@include file="header.jsp"%>
<% String status="";
%>
<%

    String qry="select tid,tname,tdetail,topendate,tclosedate from tender order by tid";
    if(request.getParameter("btn1")!=null)
    {
        String search=request.getParameter("tsearch");
        qry="select tid,tname,tdetail,topendate,tclosedate from tender where tname like '%"+search+"%'";
    }
        status=con.getTable(qry,"admintenderupdate.jsp","admintenderdelete.jsp","Update","Delete","tid","tender");
    
%>
<div class="row">
    <%@include file="sidebar.jsp"%>
    <div class="col-md-10 col-sm-12">
        <h3 class="mt-1 p-2 bg-dark text-light">Tender List Panel</h3>
        <form class="form" id="frm" name="frm" action="" method="post">
        <div class="form-row">
            <div class="form-group col-md-6">
                <input type="text" id="tsearch" name="tsearch" class="form-control" placeholder="Search"/>
            </div>
            <div class="form-group">
                <input type="submit" id="btn1" name="btn1" value="Search" class="btn btn-info"/>
                <a href="admintenderadd.jsp" class="btn btn-primary">Add</a>
            </div>
        </div><!--row ends here-->
        </form>
        <br>
        <%=status%>
    </div>
</div>
    <%@include file="footer.jsp"%>