<%-- 
    Document   : login
    Created on : 19-nov-2016, 10.50.34
    Author     : andrea
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:main-layout pageTitle="Login">
  <jsp:attribute name="head">      
    <meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="254239845195-ov4snslrjg9bpnvoq7tqtdd7priptm6d.apps.googleusercontent.com">
    <link href="css/login.css" rel="stylesheet" type="text/css">
  </jsp:attribute>
  <jsp:body>

    <div class="row">
      <div class="col-md-4 col-md-offset-4 text-center">
        <img src="img/mubit.jpg" class="login-logo" />
      </div>
    </div>

    <div class="row">
      <div class="col-md-4 col-md-offset-4 text-center">
        <form id="login-form" method="POST" class="login-form" action="Login?action=Login"><br/>
          <div class="form-group">
            <div class="input-group">
              <div class="input-group-addon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></div>
              <input type="text" class="form-control" id="username" placeholder="Mail">
            </div>

            <div class="input-group">
              <div class="input-group-addon"><span class="glyphicon glyphicon-asterisk" aria-hidden="true"></span></div>
              <input type="password" class="form-control" id="password" placeholder="Password">
            </div>
          </div>
          <button type="submit" class="btn btn-primary">Accedi</button>
        </form>
      </div>
    </div>

    <div class="row">
      <div class="col-md-4 col-md-offset-4 text-center">
        <div class="row">
          <div class="col-md-12">
            <small>Oppure</small>
          </div>
          <div class="col-md-12">
            <a href="register.jsp"><u>Registrati</u></a><br/>
          </div>
          <div class="col-md-6">
            <center><div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark"></div></center>
          </div>
          <div class="col-md-6">
            <fb:login-button scope="public_profile,email,user_birthday,user_location" onlogin="checkLoginState();" />
          </div>
        </div>
      </div>
    </div>

    
    <script type="text/javascript" src="js/facebook-scripts.js"></script>
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <script type="text/javascript" src="js/google-scripts.js"></script>

  </jsp:body>
</t:main-layout>