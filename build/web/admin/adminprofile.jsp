<%@include file="header.jsp"%>
<%
    
String status="";
String alertStatus="";%>
<%
    String username="";
    String password="";
    String email="";
    String secquest="";
    String secans="";
    String userid=session.getAttribute("userid").toString();
    String result="";
if(request.getParameter("btn1")!=null)
{
    
        username=request.getParameter("tusername");
        password=request.getParameter("tpassword");
        email=request.getParameter("temail");
        secquest=request.getParameter("tsecquest");
        secans=request.getParameter("tsecans");
        String qry="Update login set username='"+username+"', password='"+password+"', email='"+email+"', secquest='"+secquest+"', secans='"+secans+"' where userid="+userid;
        result=con.execute(qry);
        if(result.equals("success"))
        {
            status="Record updated successfully";
            alertStatus="alert-success";
        }
        else
        {
            status=result;
            alertStatus="alert-danger";
            out.println("Record not updated successfully");
        }
}      
    String qry="select * from login where userid='"+userid+"'";
    ResultSet rs=con.getRecord(qry);
    if(rs.next())
    {
        username=rs.getString("username");
        password=rs.getString("password");
        email=rs.getString("email");
        secquest=rs.getString("secquest");
        secans=rs.getString("secans");
        
    }

%>
<div class="row">
    
    <%@include file="sidebar.jsp" %>
    <div class="col-md-10 col-sm-12">
        <h3 class="mt-1  p-2 bg-dark text-light">Profile Update Page</h3>
        <form class="form" id="frm" name="frm" action="" method="post">
            <div class="form-row">
            <div class="form-group col-md-3">
                <label for="tusername">Username</label>
                <input type="text" id="tusername" name="tusername" class="form-control" value="<%=username%>">
            </div>
            </div><!--form row ends-->
            <div class="form-row">
            <div class="form-group col-md-3">
                <label for="tpassword">Password</label>
                <input type="text" id="tpassword" name="tpassword" class="form-control" value="<%=password%>">
            </div>
            </div><!--form row ends-->
            <div class="form-row">
            <div class="form-group col-md-3">
                <label for="temail">Email</label>
                <input type="text" id="temail" name="temail" class="form-control" value="<%=email%>">
            </div>
            </div><!--form row ends-->
            <div class="form-row">
            <div class="form-group col-md-3">
                <label for="tsecquest">Security Question</label>
                <input type="text" id="tsecquest" name="tsecquest" class="form-control" value="<%=secquest%>">
            </div>
            <div class="form-group col-md-3">
                <label for="tsecans">Security Answer</label>
                <input type="text" id="tsecans" name="tsecans" class="form-control" value="<%=secans%>">
            </div>
            
            </div><!--form row ends-->
            
                <input type="submit" id="btn1" name="btn1" class="btn btn-primary" value="Update"/>
            
        </form>
            <br>
            <div class="p-2 <%=alertStatus%>">
                <%=status%>
            </div>
            
    </div>
</div><!--row ends here-->

<%@include file="footer.jsp"%>