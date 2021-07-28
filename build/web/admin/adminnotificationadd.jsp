<%@include file="header.jsp" %>
<%@page import="java.util.Date;"%>
<%@page import="java.text.SimpleDateFormat;"%>
<%
String status="";
String alertStatus="";
    String title="";
    String detail="";
    String remark="";
    String setupdate="";
    if(request.getParameter("btn1")!=null)
    {
        try
        {
            title=request.getParameter("ttitle");
            detail=request.getParameter("tdetail");
            remark=request.getParameter("tremark");
            Date dt=new Date();
            SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd");
            setupdate=sf.format(dt);
        String qry="insert into notification (nottitle,notdetail,notremark,notsetupdate) values ('"+title+"', '"+detail+"', '"+remark+"','"+setupdate+"')";
        String result=con.execute(qry);
        if(result.equals("success"))
        {
        status="Notification Added Successfully";
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
        <h3 class="mt-1 p-2 bg-dark text-light">Notification Add Panel</h3>
        <form class="form" id="frm" name="frm" action="" method="post">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <input type="text" id="ttitle" name="ttitle" class="form-control" placeholder="title"/>
                </div>
            </div><!--row ends here-->
            <div class="form-row">
                <div class="form-group col-md-6">
                    <textarea id="tdetail" name="tdetail" class="form-control" row="4" placeholder="Detail"></textarea>
                </div>
            </div><!--row ends here-->
            <div class="form-row">
                <div class="form-group col-md-6">
                    <input type="text" id="tremark" name="tremark" class="form-control" placeholder="remark"/>
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