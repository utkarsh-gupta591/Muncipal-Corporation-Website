<%@include file="header.jsp" %>
<%@page import="java.util.Date;"%>
<%@page import="java.text.SimpleDateFormat;"%>
<%@page import="connection.Connectionclass;"%>
<div class="row">
    <%@include file="sidebar1.jsp" %>
    <%
    String status="";
    String alertStatus="";
    if(request.getParameter("submitbutton")!=null)
    {
        String cmpname=request.getParameter("cmpname");
        String cmpsubject=request.getParameter("cmpsubject");
        String cmpmessage=request.getParameter("cmpmessage");
        String cmpmobile=request.getParameter("cmpmobile");
         Date dt=new Date();
            SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd");
            String cmpdate=sf.format(dt);
        String qry="insert into complaint (cmpname,cmpsubject,cmpmessage,cmpmobile,cmpdate) values ('"+cmpname+"','"+cmpsubject+"','"+cmpmessage+"','"+cmpmobile+"','"+cmpdate+"')";
        
        String result=con1.execute(qry);
        if(result.equals("success"))
        {
        status="Complaint filed";
        alertStatus="alert-success";
        }
        else
        {
            status=result;
            alertStatus="alert-danger";
        }
        
    }
    %>
    <div class="col-md-8 col-sm-12 p-4">
        <h4>Complaint</h4>
        <form id="frm" name="frm" actio="" metod="post">
            <div class="form-group">
                <lable for="cmpname">Enter name</lable>
                <input type="text" id="cmpname" name="cmpname" class="form-control"/>
            </div>
            <div class="form-group">
                <lable for="cmpsubject">Enter subject</lable>
                <input type="text" id="cmpsubject" name="cmpsubject" class="form-control"/>
            </div>
            <div class="form-group">
                <lable for="cmpmessage">Enter message</lable>
                <textarea id="cmpmessage" name="cmpmessage" class="form-control" row="4" placeholder="Message"></textarea>
            </div>
            <div class="form-group">
                <lable for="cmpmobile">Mobile</lable>
                <input type="text" id="cmpmobile" name="cmpmobile" class="form-control"/>
            </div>
            <input type="submit" id="submitbutton" name="submitbutton" class="btn btn-dark"/>
                            
        </form>                         
        <br>
        <div class="p-2 <%=alertStatus%>">
        <%=status%>
        </div>
        <br>   
    </div>
    <%@include file="sidebar2.jsp" %>
</div>
    <%@include file="footer.jsp" %>