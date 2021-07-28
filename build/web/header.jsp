<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="javax.servlet.http.HttpSession;"%>
<%@page import="java.sql.*"%>
<%@page import="connection.Connectionclass;"%>
<%Connectionclass con1=new Connectionclass();%>
<html>
    <head>
        
<meta name="viewport" content="width=device-width,initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/popper.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <a href="#"><img src="images/logo.jpg" alt="logo"></a>
                    <div class="col-md-5 col-sm-12">
                    <% ResultSet rs=con1.getRecord("select * from companysetup");
                        if(rs.next())
                        {
                    %>
                    <h2 class="ml-2"><%=rs.getString("cpname")%></h2>
                    <h5 class="ml-2"><%=rs.getString("cpmission")%></h5>
                    <% } %>
                </div>
                <div class="col-md-5 col-sm-12">
                    
                </div>
                <div class="col-md-2 col-sm-12">
                </div>
            </div>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">M.C. Ltd.</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor02">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="index.jsp">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="notification.jsp">Notification</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="tender.jsp">Tender</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="ourservices.jsp">Our Services</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="contactus.jsp">Contact Us</a>
      </li>
    </ul>
  </div>
</nav> 
        </div>

                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="images/img.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/img.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/img.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
                        </div>
                    </div><!--row ends-->
                </div><!--container ends-->
                <div id="marqueediv" class="container-fluid bg-dark text-light py-2">
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <marquee>
                                <h5>Muncipal Corporation Ltd. is way to serve you</h5>
                            </marquee>
                        </div>
                    </div>
                </div>
        <div class="container-fluid" id="bodydiv">
            
 
