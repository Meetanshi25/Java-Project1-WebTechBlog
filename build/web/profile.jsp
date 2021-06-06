<%-- 
    Document   : profile.jsp
    Created on : 2 Jun, 2021, 8:25:40 PM
    Author     : MEETANSHI
--%>
<%@page import="com.webtech.blog.dao.PostDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.webtech.blog.entities.Category"%>
<%@page import="com.webtech.blog.helper.ConnectionProvider"%>
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
        <script src="https://kit.fontawesome.com/d0e42bb668.js" crossorigin="anonymous"></script>
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
    <link href="css/profile.css" rel="stylesheet"/>
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
            <a href="#" class="login-signup-btn scrollto" data-toggle="modal" data-target="#add-post-modal"
              >Add Post</a
            >
            
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
    
    
    
    <!--main body of the page-->

        <main>
            <div class="container">
                <div class=" row mt-4 ">
                    <!--first col-->
                    <div class="col-lg-3">
                        <!--categories-->
                        <div>
                            <a href="#" onclick="getPosts(0, this)"  >
                                All Posts
                            </a>
                            <!--categories-->
                                                            <ol class="gradient-list">


                            <%                                PostDao d = new PostDao(ConnectionProvider.getConnection());
                                ArrayList<Category> list1 = d.getAllCategories();
                                for (Category cc : list1) {
                            %>
                            

                            
                            
                            <li><a href="#" class="c-link active" onclick="getPosts(<%= cc.getCid()%>, this)" ><%= cc.getName()%></a></li>
    
                           


                            <%                                        }
    
                            %>
                            </ol>
                        </div>

                    </div>

                    <!--second col-->
                    <div class="col-lg-9" >
                        <!--posts-->
                        <div class="container text-center" id="loader">
                            <i class="fa fa-refresh fa-3x fa-spin"></i>
                            <h3 class="mt-2">Loading...</h3>
                        </div>

                        <div class="container-fluid" id="post-container">

                        </div>
                    </div>

                </div>

            </div>

        </main>
    
    
    


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
    
         <!--add post modal-->
         
 
<div class="modal fade" id="add-post-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <!--Header-->
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">Add Blog</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <!--Body-->
      <div class="modal-body">



<form id="add-post-form" action="AddPostServlet" method="post">

                                 <div class="form-group">
                                <select class="form-control" name="cid">
                                    <option selected disabled>---Select Category---</option>

                                    <%
                                        PostDao postd = new PostDao(ConnectionProvider.getConnection());
                                        ArrayList<Category> list = postd.getAllCategories();
                                        for (Category c : list) {
                                    %>
                                    <option value="<%= c.getCid()%>"><%= c.getName()%></option>

                                    <%
                                        }
                                    %>
                                </select>
                            </div>
                                

                            <div class="form-group">
                                <input name="pTitle" type="text" placeholder="Enter post Title" class="form-control"/>
                            </div>

                            <div class="form-group">
                                <textarea name="pContent" class="form-control" style="height: 200px;" placeholder="Enter your content"></textarea>
                            </div>
                            <div class="form-group">
                                <textarea name="pCode" class="form-control" style="height: 200px;" placeholder="Enter your program (if any)"></textarea>
                            </div>
                            <div class="form-group">
                                <label>Select your pic..</label>
                                <br>
                                <input type="file" name="pic"  >
                            </div>

                            <div class="container text-center">
                                <button type="submit" class="btn btn-outline-primary">Post </button>
                            </div>

                        </form>

      </div>
      <!--Footer-->
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-primary" data-dismiss="modal">Close</button>
        <button class="btn btn-primary">Checkout</button>
      </div>
    </div>
  </div>
</div>
<!-- Modal: modalCart -->
    
    
        
    
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
    
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
        
        <!--//now add post js-->
        
        <script>
            $(document).ready(function (e) {
                //
                $("#add-post-form").on("submit", function (event) {
                    //this code gets called when form is submitted....
                    event.preventDefault();
                    console.log("you have clicked on submit..");
                    let form = new FormData(this);
                    //now requesting to server
                    $.ajax({
                        url: "AddPostServlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            //success ..
                            console.log(data);
                            if (data.trim() == 'done')
                            {
                                swal("Good job!", "saved successfully", "success");
                            } else
                            {
                             swal("Error!!", "Something went wrong try again...", "error");
                             }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                          //  error..
                            swal("Error!!", "Something went wrong try again...", "error");
                        },
                        processData: false,
                        contentType: false
                    });
                });
            });
        </script>

        <!--loading post using ajax-->
        <script>
            function getPosts(catId, temp) {
                $("#loader").show();
                $("#post-container").hide();
                $(".c-link").removeClass('active');
                $.ajax({
                    url: "load_posts.jsp",
                    data: {cid: catId},
                    success: function (data, textStatus, jqXHR) {
                        console.log(data);
                        $("#loader").hide();
                        $("#post-container").show();
                        $('#post-container').html(data);
                        $(temp).addClass('active');
                    }
                });
            }
            $(document).ready(function (e) {
                let allPostRef = $('.c-link')[0];
                getPosts(0, allPostRef);
            });
        </script>
        
        
        
    </body>
</html>
