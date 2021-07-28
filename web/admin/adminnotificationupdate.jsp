<%@include file="header.jsp"%>
<%
String status="";
String alertStatus="";
    String qry="";
    String title="";
    String detail="";
    String remark="";
    
    try
    {
    String id=request.getParameter("id");
    qry="select * from notification where id='"+id+"'";
    ResultSet rs=con.getRecord(qry);
    if(rs.next())
    {
    title=rs.getString("nottitle");
    detail=rs.getString("notdetail");
    remark=rs.getString("notremark");
    }
    if(request.getParameter("btn1")!=null)
    {
        title=request.getParameter("ttitle");
        detail=request.getParameter("tdetail");
        remark=request.getParameter("tremark");
        qry="update notification set nottitle='"+title+"', notdetail='"+detail+"', notremark='"+remark+"' where id='"+id+"'";
        String result=con.execute(qry);
        if(result.equals("success"))
        {
            status="Notification Updated Successfully";
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
        <h3 class="mt-1 p-2 bg-dark text-light">Notification Update Panel</h3>
        <form class="form" id="frm" name="frm" action="" method="post">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <input type="text" id="ttitle" name="ttitle" class="form-control" value="<%=title%>" placeholder="title"/>
                </div>
            </div><!--row ends here-->
            <div class="form-row">
                <div class="form-group col-md-6">
                    <textarea id="tdetail" name="tdetail" class="form-control" row="4" placeholder="Detail"><%=detail%></textarea>
                </div>
            </div><!--row ends here-->
            <div class="form-row">
                <div class="form-group col-md-6">
                    <input type="text" id="tremark" name="tremark" class="form-control" value="<%=remark%>" placeholder="remark"/>
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