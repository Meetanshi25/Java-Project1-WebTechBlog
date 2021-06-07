<%-- 
    Document   : signup
    Created on : 30 May, 2021, 11:14:31 AM
    Author     : MEETANSHI
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="https://kit.fontawesome.com/d0e42bb668.js" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup Page</title>


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
    <!--<link href="font-awesome.min.css" rel="stylesheet" />-->
    <link href="css/login.css" rel="stylesheet" />
    
    </head>
    <body> 
        
        <!-- ======= Header ======= -->
        <%@include file="navbar2.jsp" %>
        
        <!-- ======= Sign Up Form Section====== -->
                       <section id="signup" class="d-flex flex-column justify-content-center" style="background-color: #E9967A; margin-top: 20px">     
            <div class="container h-100 " style="background-color: #E9967A">
        <div class="row h-100 justify-content-center align-items-center">
            <form method="POST" action="RegisterServlet" class="col-md-12" id="register-form">
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

                                <!--<h1>Sign-Up</h1>-->
                                 <div class="section-title align-items-center">
            <b><h2>SignUp</h2></b>
          </div>
                                <div class="form-group position-relative mb-4">
                                    <input type="text" class="form-control border-top-0 border-right-0 border-left-0 rounded-0 shadow-none" id="username" name="user_name"
                                        placeholder="Full Name">
                                        
                                </div>
                                <div class="form-group position-relative mb-4">
                                    <input type="email" class="form-control border-top-0 border-right-0 border-left-0 rounded-0 shadow-none" id="useremail" name="user_email"
                                        placeholder="Email Id">
                                       
                                </div>
                                <div class="form-group position-relative mb-4">
                                    <input type="date" placeholder="yyyy-mm-dd"  class="form-control border-top-0 border-right-0 border-left-0 rounded-0 shadow-none" name="user_dob"  id="userdob">
                                        
                                </div>


                                <div class="form-group position-relative mb-4">
                                    <input type="password" class="form-control border-top-0 border-right-0 border-left-0 rounded-0 shadow-none" id="password" name="user_password"
                                        placeholder="Password">
                                        

                                </div>
                                <div class="row  mt-4 mb-4">
                                    <div class="col-md-6">
                                        <div class="form-check">
                                            <input class="form-check-input"  name="check" type="checkbox"  id="defaultCheck1">
                                            <label class="form-check-label" for="defaultCheck1">
                                                Accept Terms & Conditions
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-md-6 text-right">
                                       
                                    </div>
                                </div>

                                
                                <div class="container text-center" id="loader" style="display: none"><span class="fa fa-refresh fa-spin fa-3x"></span>
                                    <h3>Please Wait</h3></div>
                                <button class="btn btn-success btn-block shadow border-0 py-2 text-uppercase " id="submit">
                                    Sign-Up
                                </button>

                                <p class="text-center mt-5">
                                    Already an existing user
                                    <span>
                                        <a href="login.jsp">Login to your account  </a>
                                        
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
        
        
         <!-- ======= Faq ======= -->
        <main id="main">
        <%@include file="faq.jsp" %>
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
    <script>
        $(document).ready(function(){
            console.log("loaded....");
            
            $('#register-form').on('submit',function(event){
                event.preventDefault();
                
                   
                let form=new FormData(this);
                
                $('#submit').hide();
                $('#loader').show();
                
                //send form to register servlet:
                
                $.ajax({
                    url: "RegisterServlet",
                    type: 'POST',
                    data: form,
                    success: function (data, textStatus, jqXHR) {
                        console.log(data);
                        $('#submit').show();
                         $('#loader').hide();
                         
                         
                         if(data.trim()==='done')
                         {
                    
                      swal("SignUp Successfull.Redirecting to the login page")
                   .then((value) => {
                    window.location="login.jsp";
                   }); 
                         }
                         else
                         {
                             swal(data);
                         }
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        $('#submit').show();
                         $('#loader').hide();
                        swal("OOPs! Something went Wrong!");
                    },
                    processData: false,
                    contentType: false
                });
            });
        });
        </script>
    </body>
</html>

