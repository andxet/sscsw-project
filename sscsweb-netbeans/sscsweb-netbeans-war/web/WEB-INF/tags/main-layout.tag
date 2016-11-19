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
    <%@include  file="../../includes/head.html" %>    
    <jsp:invoke fragment="head"/>
    
  </head>
  <body>
    <div class="container">
      <div id="pageheader">
        <%@include  file="../../includes/header.html" %>
      </div>
      <div id="body">
        <jsp:doBody/>
      </div>
      <div id="pagefooter">
        <%@include  file="../../includes/footer.html" %>
      </div>
    </div>
  </body>
</html>