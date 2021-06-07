<%-- 
    Document   : load_posts
    Created on : 5 Jun, 2021, 8:57:01 PM
    Author     : MEETANSHI
--%>
<%@page import="com.webtech.blog.entities.User"%>
<%@page import="com.webtech.blog.dao.LikeDao"%>
<%@page import="com.webtech.blog.entities.Post"%>
<%@page import="java.util.List"%>
<%@page import="com.webtech.blog.helper.ConnectionProvider"%>
<%@page import="com.webtech.blog.dao.PostDao"%>
<%@page  errorPage="errorpage.jsp" %>


<div class="info">
    <h1 class="text-center">Tech Blogs</h1>
  </div>
<div class="row">

    <%
        
        User uuu=(User)session.getAttribute("currentuser");
        
        //1sec wait to load data
        Thread.sleep(1000);
        
        PostDao d = new PostDao(ConnectionProvider.getConnection());
        
        int cid = Integer.parseInt(request.getParameter("cid"));
        List<Post> posts = null;
        if (cid == 0) {
            posts = d.getAllPosts();
        } else {
            posts = d.getPostByCatId(cid);
        }
        
        if (posts.size() == 0) {
            out.println("<h3 class='display-3 text-center'>No Posts in this category..</h3>");
            return;
        }
        
        for (Post p : posts) {
    %>

    <div style="margin-bottom: 30px"class="col-md-6 mt-2">
        <div class="card">
            <img style="height: 230px" class="card-img-top " src="blogs_pics/<%= p.getpPic()%>" alt="Card image cap">
            <div class="card-body">
                <b><%= p.getpTitle()%></b>
                <!--<p><%= p.getpContent()%></p>-->
                
                

            </div>
            <div class="card-footer text-center">
                <% 
                    LikeDao ld = new LikeDao(ConnectionProvider.getConnection());
                %>

                <a href="#!" onclick="doLike(<%= p.getPid()%>,<%= uuu.getId()%>)" class="btn btn-outline-light btn-sm" style="background-image: linear-gradient(to right top, #051937, #004d7a, #008793, #00bf72, #a8eb12);"> <i class="fa fa-thumbs-o-up"></i> <span class="like-counter"><%= ld.countLikeOnPost(p.getPid())%></span>  </a>
                
                <a  style="background-image: linear-gradient(to right top, #051937, #004d7a, #008793, #00bf72, #a8eb12);" href="#!" class="btn btn-outline-light btn-sm"> <i class="fa fa-commenting-o"></i> <span>20</span>  </a>


                <a href="show_blog_page.jsp?post_id=<%= p.getPid()%>" class="btn btn-outline-light btn-sm" style="background-image: linear-gradient(to right top, #051937, #004d7a, #008793, #00bf72, #a8eb12);" >Read More...</a>
                            </div>

        </div>


    </div>


    <%
        }
        
    %>

</div>
   <script src="js/myjs.js" type="text/javascript"></script>