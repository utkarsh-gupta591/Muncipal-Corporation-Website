<%@include file="header.jsp"%>
<%
String status="";
String alertStatus="";
    String qry="";
    String serviceName="";
    String detail="";
    String remark="";
    
    try
    {
    String id=request.getParameter("id");
    qry="select * from services where svid='"+id+"'";
    ResultSet rs=con.getRecord(qry);
    if(rs.next())
    {
    serviceName=rs.getString("svname");
    detail=rs.getString("svdetail");
    remark=rs.getString("svremark");
    }
    if(request.getParameter("btn1")!=null)
    {
        serviceName=request.getParameter("servicename");
        detail=request.getParameter("detail");
        remark=request.getParameter("remark");
        qry="update services set svname='"+serviceName+"', svdetail='"+detail+"', svremark='"+remark+"' where svid='"+id+"'";
        String result=con.execute(qry);
        if(result.equals("success"))
        {
            status="Service Updated Successfully";
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
        <h3 class="mt-1 p-2 bg-dark text-light">Service Update Panel</h3>
        <form class="form" id="frm" name="frm" action="" method="post">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="servicename">Name</label>
                    <input type="text" id="servicename" name="servicename" class="form-control" value="<%=serviceName%>" placeholder="serviceName"/>
                </div>
            </div><!--row ends here-->
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="detail">Detail</label>
                    <textarea id="detail" name="detail" class="form-control" row="4" placeholder="Detail"><%=detail%></textarea>
                </div>
            </div><!--row ends here-->
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="remark">Remark</label>
                    <input type="text" id="remark" name="remark" class="form-control" value="<%=remark%>" placeholder="remark"/>
                </div>
            </div><!--row ends here-->

            <input type="submit" id="btn1" name="btn1" value="Update" class="btn btn-primary"/>

        </form>
        <br>
        <div class="p-2 <%=alertStatus%>">
        <%=status%>
        </div>
        <br>
    </div>
</div>
<%@include file="footer.jsp"%>