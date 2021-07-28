<%@include file="header.jsp" %>
<%@page import="java.util.Date;"%>
<%@page import="java.text.SimpleDateFormat;"%>
<%
String status="";
String alertStatus="";
    String tenderName="";
    String detail="";
    String opendate="";
    String closedate="";
    String criteria="";
    String rules="";
    String setdate="";
    String contactEmail="";
    String contactNumber="";
    if(request.getParameter("btn1")!=null)
    {
        try
        {
            tenderName=request.getParameter("tname");
            detail=request.getParameter("tdetail");
            opendate=request.getParameter("topendate");
            closedate=request.getParameter("tclosedate");
            criteria=request.getParameter("criteria");
            rules=request.getParameter("rules");
            contactEmail=request.getParameter("contactEmail");
            contactNumber=request.getParameter("contactNumber");
            Date dt=new Date();
            SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd");
            setdate=sf.format(dt);
        String qry="insert into tender (tname,tdetail,topendate,tclosedate,criteria,rules,setdate,contactemail,contactnumber) values ('"+tenderName+"','"+detail+"','"+opendate+"','"+closedate+"','"+criteria+"','"+rules+"','"+setdate+"','"+contactEmail+"','"+contactNumber+"')";
        String result=con.execute(qry);
        if(result.equals("success"))
        {
        status="Tender Added Successfully";
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
        <h3 class="mt-1 p-2 bg-dark text-light">Tender Add Panel</h3>
        <form class="form" id="frm" name="frm" action="" method="post">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="tname">Tender Name</label>
                    <input type="text" id="tname" name="tname" class="form-control" placeholder="Tender Name"/>
                </div>
            </div><!--row ends here-->
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="tdetail">Tender Detail</label>
                    <textarea id="tdetail" name="tdetail" class="form-control" row="4" placeholder="Detail"></textarea>
                </div>
            </div><!--row ends here-->
             <div class="form-row">
                <div class="form-group col-md-3">
                    <label for="topendate">Tender Open Date</label>
                    <input type="text" id="topendate" name="topendate" class="form-control" placeholder="opendate"/>
                </div>
                 <div class="form-group col-md-3">
                     <label for="tclosedate">Tender Close Date</label>
                    <input type="text" id="tclosedate" name="tclosedate" class="form-control" placeholder="closedate"/>
                </div>
            </div><!--row ends here-->
             <div class="form-row">
                <div class="form-group col-md-3">
                    <label for="criteria">Criteria</label>
                    <input type="text" id="criteria" name="criteria" class="form-control" placeholder="criteria"/>
                </div>
                 <div class="form-group col-md-3">
                     <label for="rules">Rules</label>
                    <input type="text" id="rules" name="rules" class="form-control" placeholder="rules"/>
                </div>
            </div><!--row ends here-->
            <div class="form-row">
                <div class="form-group col-md-3">
                    <label for="contacteamil">Contact email</label>
                    <input type="text" id="contacteamil" name="contacteamil" class="form-control" placeholder="Contact Email"/>
                </div>
                <div class="form-group col-md-3">
                    <label for="contactnumber">Contact number</label>
                    <input type="text" id="contactnumber" name="contactnumber" class="form-control" placeholder="Contact Number"/>
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