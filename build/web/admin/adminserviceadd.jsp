<%@include file="header.jsp" %>
<%@page import="java.util.Date;"%>
<%@page import="java.text.SimpleDateFormat;"%>
<%
String status="";
String alertStatus="";
    String serviceName="";
    String detail="";
    String remark="";
    String setdate="";
    if(request.getParameter("btn1")!=null)
    {
        try
        {
            serviceName=request.getParameter("svname");
            detail=request.getParameter("svdetail");
            remark=request.getParameter("svremark");
            Date dt=new Date();
            SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd");
            setdate=sf.format(dt);
        String qry="insert into services (svname,svdetail,svremark,setdate) values ('"+serviceName+"', '"+detail+"', '"+remark+"','"+setdate+"')";
        String result=con.execute(qry);
        if(result.equals("success"))
        {
        status="Service Added Successfully";
        alertStatus="alert-success";
        }
        else
        {
            status=result;
            alertStatus="alert-danger";
        }
        }catch(Exception e)
        {
        status="Error in code "+e;       
        }
    
    }
%>
<div class="row">
<%@include file="sidebar.jsp" %>
    <div class="col-md-10 col-sm-12">
        <h3 class="mt-1 p-2 bg-dark text-light">Service Add Panel</h3>
        <form class="form" id="frm" name="frm" action="" method="post">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="servicename">Service Name</label>
                    <input type="text" id="svname" name="svname" class="form-control" placeholder="Name"/>
                </div>
            </div><!--row ends here-->
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="svdetail">Detail</label>
                    <textarea id="svdetail" name="svdetail" class="form-control" row="4" placeholder="Detail"></textarea>
                </div>
            </div><!--row ends here-->
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="svremark">Remark</label>
                    <input type="text" id="svremark" name="svremark" class="form-control" placeholder="remark"/>
                </div>
            </div><!--row ends here-->

            <input type="submit" id="btn1" name="btn1" value="Add" class="btn btn-primary"/>

        </form>
        <br>
        <div class="p-2 <%=alertStatus%>">
        <%=status%>
        </div>
        <br>
    </div>
</div>
        
<%@include file="footer.jsp"%>