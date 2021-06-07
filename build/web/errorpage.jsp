<%-- 
    Document   : errorpage
    Created on : 2 Jun, 2021, 6:12:44 PM
    Author     : MEETANSHI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry! Something went wrong</title>
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
<!--    <link href="icofont/icofont.min.css" rel="stylesheet" />
    <link
      href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css"
      rel="stylesheet"
    />-->
<style>
@import url("https://fonts.googleapis.com/css2?family=Fontdiner+Swanky&family=Roboto:wght@500&display=swap");
* {
  box-sizing: 0;
  margin: 0;
  padding: 0;
  cursor: url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/4424790/cursors-edge.png"), auto;
}
body {
  background: linear-gradient(to right, white 50%, #383838 50%);
  font-family: "Roboto", sans-serif;
  font-size: 18px;
  font-weight: 500;
  line-height: 1.5;
  color: white;
}
div {
  display: flex;
  align-items: center;
  height: 100vh;
  max-width: 1000px;
  width: calc(100% - 4rem);
  margin: 0 auto;
}
div > * {
  display: flex;
  flex-flow: column;
  align-items: center;
  justify-content: center;
  height: 100vh;
  max-width: 500px;
  width: 100%;
  padding: 2.5rem;
}
aside {
  background-image: url("img/error500.png");
  background-position: top right;
  background-repeat: no-repeat;
  background-size: 25px 100%;
}
aside img {
  display: block;
  height: auto;
  width: 100%;
}
main {
  text-align: center;
}
main h1 {
  font-family: "Fontdiner Swanky", cursive;
  font-size: 4rem;
  color: #c5dc50;
  margin-bottom: 1rem;
}
main p {
  margin-bottom: 2.5rem;
}
main p em {
  font-style: italic;
  color: #c5dc50;
}
main button {
  font-family: "Fontdiner Swanky", cursive;
  font-size: 1rem;
  color: #383838;
  border: none;
  background-color: #f36a6f;
  padding: 1rem 2.5rem;
  transform: skew(-5deg);
  transition: all 0.1s ease;
  cursor: url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/4424790/cursors-eye.png"), auto;
}
main button:hover {
  background-color: #c5dc50;
  transform: scale(1.15);
}
@media (max-width: 700px) {
  body {
    background: #383838;
    font-size: 16px;
  }
  div {
    flex-flow: column;
  }
  div > * {
    max-width: 700px;
    height: 100%;
  }
  aside {
    background-image: none;
    background-color: white;
  }
  aside img {
    max-width: 300px;
  }
}

</style>
   
    </head>
    <body>
          <div>
 <aside><!--<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/4424790/Mirror.png" alt="500 Image" />-->
     <img src="img/error500.png" alt="500 Image" />
  </aside>
  <main>
    <h1>Sorry!</h1>
    <p>
      Either you aren't cool enough to visit this or something went wrong <em>. . . like your social life.</em>
    </p>
    <a href="index.jsp">  <button >You can go now!</button></a>
  </main>
</div>
    </body>
</html>
