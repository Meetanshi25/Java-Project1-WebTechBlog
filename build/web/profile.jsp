<%-- 
    Document   : profile.jsp
    Created on : 2 Jun, 2021, 8:25:40 PM
    Author     : MEETANSHI
--%>
<%@page import="com.webtech.blog.entities.User"%>
<%@page errorPage="errorpage.jsp" %>
<%User user=(User)session.getAttribute("currentuser");

if(user==null)
{
    response.sendRedirect("login.jsp");
}

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile </title>
        <link
      href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
      rel="stylesheet"
    />

    <!--  CSS Files -->
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
      crossorigin="anonymous"
    />
    <link href="icofont/icofont.min.css" rel="stylesheet" />
    <link
      href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css"
      rel="stylesheet"
    />
    <link href="css/style.css" rel="stylesheet"/>
    <link href="css/login.css" rel="stylesheet" />
    </head>
    <body>
                
        
        <!-- ======= Header ======= -->
    <header id="header" class="fixed-top header-scrolled">
      <div class="container-fluid">
        <div class="row justify-content-center">
          <div
            class="col-xl-9 d-flex align-items-center justify-content-between"
          >
            <h1 class="logo"><a href="index.jsp">WebTechBlog</a></h1>
            <!-- Uncomment below if you prefer to use an image logo -->
            <!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

            <nav class="nav-menu d-none d-lg-block">
              <ul>
                <li class="active"><a href="index.jsp">Home</a></li>
                <li><a href="#">Blogs to Explore</a></li>
                <li class="drop-down">
                  <a href="">Categories</a>
                  <ul>
                    <li><a href="#">Drop Down 1</a></li>
                    <li><a href="#">Drop Down 2</a></li>
                    <li><a href="#">Drop Down 3</a></li>
                    <li><a href="#">Drop Down 4</a></li>
                  </ul>
                </li>
              </ul>
            </nav>
            <!-- .nav-menu -->

            <a href="#" data-toggle="modal" data-target="#profile-modal" class="login-signup-btn scrollto"
              > <i class="fa-solid fa-user"></i><%=user.getName()%></a
            >
            <a href="LogoutServlet" class="login-signup-btn scrollto"
              >logout</a
            >
              </div>
        </div>
      </div>
    </header>
    <!-- End Header -->
    
    <!-- ======= Profile Modal ======= -->
    
    <br>
    <br>
    <br>
  
    <!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="profile-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header primary-background ">
        <h5 class="modal-title" id="exampleModalLongTitle">WebTechBlog</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <div class="container text-center">
              <img src="profilepics/<%=user.getProfile()%>" class="img-fluid" style="border-radius:50%;max-width: 150px;;" ><br>
          <h5 class="modal-title mt-3" id="exampleModalLongTitle"><%=user.getName()%></h5>
          
          <!--//profile details-->
          
          <div id="profile-details"><table class="table">
  <tbody>
    <tr>

<th scope="row"> ID :</th>
   <td> <%= user.getId()%></td>
      
    </tr>
    <tr>
      <th scope="row"> Email : </th>
      <td><%= user.getEmail()%></td>
    </tr>
    
    <tr>
      <th scope="row"> DOB : </th>
      <td><%= user.getDate()%></td>
    </tr>
    
    <tr>
      <th scope="row"> About : </th>
      <td><%= user.getAbout()%></td>
    </tr>
    
    <tr>
      <th scope="row"> About : </th>
      <td><%= user.getDateTime().toString()%></td>
    </tr>
   
  </tbody>
</table>
          </div>
          
          
    <!--profile -edit-->
    
    <div id="profile-edit" style="display: none;">
        <h3 class="mt-2">Please Edit Carefully</h3>
        
        
        <form action="EditServlet" method="post" enctype="multipart/form-data">
                                    <table class="table">
                                        <tr>
                                            <td>ID :</td>
                                            <td><%= user.getId()%></td>
                                        </tr>
                                        <tr>
                                            <td>Email :</td>
                                            <td> <input type="email" class="form-control" name="user_email" value="<%= user.getEmail()%>" > </td>
                                        </tr>
                                        <tr>
                                            <td>Name :</td>
                                            <td> <input type="text" class="form-control" name="user_name" value="<%= user.getName()%>" > </td>
                                        </tr>
                                        
                                        <tr>
                                            <td>About  :</td>
                                            <td>
                                                <textarea rows="3" class="form-control" name="user_about" ><%= user.getAbout()%>
                                                </textarea>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Password :</td>
                                            <td> <input type="password" class="form-control" name="user_password" value="<%= user.getPassword()%>" > </td>
                                        </tr>
                                        

                                        <tr>
                                            <td>New Profile:</td>
                                            <td>
                                                <input type="file" name="image" class="form-control" >
                                            </td>
                                        </tr>

                                    </table>

                                    <div class="container">
                                        <button type="submit" class="btn btn-outline-primary">Save</button>
                                    </div>

                                </form>    
        
        
    </div>
          </div>
      </div>  
      <div class="modal-footer">
                <button type="button" id="edit-profile-button" class="btn btn-primary">Edit</button>
                <button type="button" class="btn btn-secondary"  data-dismiss="modal">Close</button>

      </div>
    </div>
  </div>
</div>
    
    
    
        
    
<!--    ======= Footer ======= -->
        <%--<%@include file="footer.jsp" %>--%>
        
        
        
        
        
        <script
      src="https://code.jquery.com/jquery-3.6.0.min.js"
      integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
      crossorigin="anonymous"
    ></script>

    <!-- bootstarp javascript import -->
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
      integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
      integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
      crossorigin="anonymous"
    ></script>
    <script src="jquery/jquery.easing.min.js"></script>
    <script src="js/navbar2.js"></script>
     <script>
                                $(document).ready(function () {
                                    let editStatus = false;
                                    $('#edit-profile-button').click(function ()
                                    {
                                        if (editStatus == false)
                                        {
                                            $("#profile-details").hide();
                                            $("#profile-edit").show();
                                            editStatus = true;
                                            $(this).text("Back");
                                        } else
                                        {
                                            $("#profile-details").show();
                                            $("#profile-edit").hide();
                                            editStatus = false;
                                            $(this).text("Edit");
                                        }
                                    });
                                });
        </script>
        
    </body>
</html>
