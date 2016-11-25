<%-- 
    Document   : main-layout
    Created on : 19-nov-2016, 13.31.30
    Author     : andrea
--%>

<%@tag description="The main layout of the site" pageEncoding="UTF-8"%>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="head" fragment="true"%>

<%@attribute name="pageTitle" %>

<%-- any content can be specified here e.g.: --%>
<html>
  <head>
    <title>${pageTitle}</title>
    <link href="css/general.css" rel="stylesheet" type="text/css">
    <%@include  file="../../includes/head.html" %>    
    <jsp:invoke fragment="head"/>

  </head>
  <body>
    <header>
      <%@include  file="../../includes/header.html" %>
    </header>
    <div class="container">
      <jsp:doBody/>
    </div>
    <footer>
      <div class="container">
        <%@include  file="../../includes/footer.html" %>
      </div>
    </footer>
  </body>
</html>