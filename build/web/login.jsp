<%-- 
    Document   : login
    Created on : 30 May, 2021, 11:11:05 AM
    Author     : MEETANSHI
--%><%@page import="com.webtech.blog.entities.Message"%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>


    <!-- Google Fonts -->
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
    <body > 
        
        <!-- ======= Header ======= -->
        <%@include file="navbar2.jsp" %>
        
        <!-- ======= login Form Section====== -->
        <section id="login" class="d-flex flex-column justify-content-center" style="background-color: #E9967A; margin-top: 50px">     
            <div class="container h-100 " style="background-color: #E9967A">
        <div class="row h-100 justify-content-center align-items-center">
            <form action="LoginServlet" method="POST" class="col-md-12">
                <div class="AppForm shadow-lg">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="AppFormRight position-relative d-flex justify-content-center flex-column align-items-center text-center p-5 text-white">
                                <h2 class="position-relative px-4 pb-3 mb-4">Welcome</h2>
                                <p>Lorem ipsuing elit. Molomos totam est voluptatum i omos totam est voluptatum i ure sit consectetur ill</p>
                            </div>
                        </div>
                        <div class="col-md-6 d-flex justify-content-center align-items-center">
                            <div class="AppFormLeft">

                                <!--<h1>Login</h1>-->
                                <div class="section-title align-items-center">
                                <b><h2>Login</h2></b>
                                 </div>
                                
                               
                                
      <% 
    Message m=(Message)session.getAttribute("msg");
    
if(m!=null)
{
    %>
     <div class="alert <%=m.getCssClass() %>" role="alert">
 <%= m.getContent() %>
</div>
     
     <%
         
         session.removeAttribute("msg");
         }
         %>                          
                                
                                
                                
                                <div class="form-group position-relative mb-4">
                                    <input name="email" required type="email" class="form-control border-top-0 border-right-0 border-left-0 rounded-0 shadow-none" id="useremail"
                                        placeholder="Email Id">
                                        
                                </div>
                                <div class="form-group position-relative mb-4">
                                    <input name="password" required type="password" class="form-control border-top-0 border-right-0 border-left-0 rounded-0 shadow-none" id="password"
                                        placeholder="Password">
                                       

                                </div>


                                <div class="container">  <button class="btn btn-success btn-block shadow border-0 py-2 text-uppercase ">
                                    Login
                                    </button></div>
                                 
                                

                                <p class="text-center mt-5">
                                    Don't have an account?
                                    <span>
                                        <a href="signup.jsp">Create your account</a>
                                        
                                    </span>

                                </p>

                            </div>

                        </div>
                        
                    </div>
                </div>

            </form>
        </div>
    </div>
  </section>

        <main id="main">
              "
        <%--<%@include file="blogs.jsp"%>--%>
        <%--<%@include file="features.jsp"%>--%>
        <%@include file="faq.jsp"%>
        
    </main>

        
        <!-- ======= Footer ======= -->
        <%@include file="footer.jsp" %>
        
        <!-- ======= Preloader======= -->
        <!--<div id="preloader"></div>-->
        
            <!-- JS Files -->
     <!-- cdn js import -->

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
    </body>
</html>

