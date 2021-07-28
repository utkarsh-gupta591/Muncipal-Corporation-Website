<div class="col-md-2 col-sm-12 pb-4 bg-light border text-dark text-center">
        <br>
        <h5>Username:<br>
        <%=session.getAttribute("username")%>
        </h5>
        <br>
        <h4>Select menu</h4>
        <ul class="navbar-nav">
            <li class="nav-item btn btn-danger mt-1"><a class="text-light" href="adminprofile.jsp">Profile Setup</a></li>
            <li class="nav-item btn btn-danger mt-1"><a class="text-light" href="adminnotificationlist.jsp">Notification Setup</a></li>
            <li class="nav-item btn btn-danger mt-1"><a class="text-light" href="adminwebsitesetup.jsp">Website Setup</a></li>
            <li class="nav-item btn btn-danger mt-1"><a class="text-light" href="admintenderlist.jsp">Tender Setup</a></li>
            <li class="nav-item btn btn-danger mt-1"><a class="text-light" href="adminservicelist.jsp">Our Services Setup</a></li>
            <li class="nav-item btn btn-danger mt-1"><a class="text-light" href="admincomplaintlist.jsp">Complaint List</a></li>
        </ul>
    </div>