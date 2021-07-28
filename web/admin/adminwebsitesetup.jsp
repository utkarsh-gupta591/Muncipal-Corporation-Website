
<%@include file="header.jsp"%>
<%@page import="java.util.Date;" %>
<%@page import="java.text.SimpleDateFormat;"%>
<%
String status="";
String alertStatus="";

    String qry="";
    String companyName="";
    String mission="";
    String about="";
    String address="";
    String email1="";
    String email2="";
    String mobile1="";
    String mobile2="";
    ResultSet rs;

    try
    {   
        qry="select * from companysetup";
        rs=con.getRecord(qry);
        if(rs.next())
        {
            companyName=rs.getString("cpname");
            mission=rs.getString("cpmission");
            about=rs.getString("cpabout");
            address=rs.getString("address");
            email1=rs.getString("email1");
            email2=rs.getString("email2");
            mobile1=rs.getString("mobile1");
            mobile2=rs.getString("mobile2");
        }
        if(request.getParameter("btn1")!=null)
        {
           companyName=request.getParameter("twebsitename");
           mission=request.getParameter("tmission");
           about=request.getParameter("tabout");
           address=request.getParameter("taddress");
           email1=request.getParameter("temail1");
           email2=request.getParameter("temail2");
           mobile1=request.getParameter("tmobile1");
           mobile2=request.getParameter("tmobile2");

           Date dt=new Date();
           SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd");
           String setupdate=sf.format(dt);

           qry="select * from companysetup";
           rs=con.getRecord(qry);
           String result="";
           if(rs.next())
           {
               qry="update companysetup set cpname='"+companyName+"', cpmission='"+mission+"', cpabout='"+about+"', address='"+address+"', email1='"+email1+"', email2='"+email2+"', mobile1='"+mobile1+"', mobile2='"+mobile2+"' where cpid='"+1+"'";
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
               }
           }
           else
           {
               qry="insert into companysetup (cpname,cpmission,cpabout,address,email1,email2,mobile1,mobile2,setupdate) values ('"+companyName+"','"+mission+"','"+about+"','"+address+"','"+email1+"','"+email2+"','"+mobile1+"','"+mobile2+"','"+setupdate+"')";
               result=con.execute(qry);
               if(result.equals("success"))
               {
                   status="Record Added Successfully";
                   alertStatus="alert-success";
               }
               else
               {
                   status=result;
                   alertStatus="alert-danger";
               }
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
        <h3 class="mt-1 p-2 bg-dark text-light">Website Setup Page</h3>
        <form class="form" id="frm" name="frm" action="" method="post">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="twebsitename">Website name</label>
                    <input type="text" id="twebsitename" name="twebsitename" class="form-control" value="<%=companyName%>" placeholder="Company name"/>
                </div>
            </div><!--row ends here-->
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="tmission">Mission</label>
                    <input type="text" id="tmission" name="tmission" class="form-control" value="<%=mission%>" placeholder="Mission"/>
                </div>
            </div><!--row ends here-->
            
            <div class="form-row">
                <div class="form-group col-md-6">
                        <label for="tabout">About us</label>
                        <textarea id="tabout" name="tabout" class="form-control" row="4" placeholder="About"><%=about%></textarea>
                </div>
            </div><!--row ends here-->
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="taddress">Contact Address</label>
                    <input type="text" id="taddress" name="taddress" class="form-control" value="<%=address%>" placeholder="address"/>
                </div>
            </div><!--row ends here-->
            <div class="form-row">
                <div class="form-group col-md-3">
                    <label for="tmobile1">Contact Mobile</label>
                    <input type="text" id="tmobile1" name="tmobile1" class="form-control" value="<%=mobile1%>" placeholder="Mobile 1"/>
                </div>
                <div class="form-group col-md-3">
                    <label for="tmobile2">Contact Mobile</label>
                    <input type="text" id="tmobile2" name="tmobile2" class="form-control" value="<%=mobile2%>" placeholder="Mobile 2"/>
                </div>
            </div><!--row ends here-->
            
            <div class="form-row">
                <div class="form-group col-md-3">
                    <label for="temail1">Contact Email 1</label>
                    <input type="text" id="temail1" name="temail1" class="form-control" value="<%=email1%>" placeholder="Email 1"/>
                </div>
                <div class="form-group col-md-3">
                    <label for="temail2">Contact Email 1</label>
                    <input type="text" id="temail2" name="temail2" class="form-control" value="<%=email2%>" placeholder="Email 2"/>
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