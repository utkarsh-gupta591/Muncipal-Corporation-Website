<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="javax.servlet.http.HttpSession;"%>
<%@page import="java.sql.*"%>
<%@page import="connection.Connectionclass;"%>
<%Connectionclass con=new Connectionclass();%>
<html>
    <head>
        
<meta name="viewport" content="width=device-width,initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Profile Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="../css/adminfooter.css">
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/popper.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row bg-secondary text-light p-2">
                <div class="col-md-5 col-sm-12">
                    <h1>Admin Website Panel</h1>
                </div>
                <div class="col-md-5 col-sm-12"></div>
                <div class="col-md-2 col-sm-12">
                    <a class="btn btn-info" href="adminprofile.jsp">Profile</a>
                    <a class="btn btn-dark" href="adminlogout.jsp">Logout</a>
                </div>
            </div>
            

