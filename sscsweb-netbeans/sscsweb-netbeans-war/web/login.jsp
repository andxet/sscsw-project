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
  </jsp:attribute>
  <jsp:body>
    <script type="text/javascript" src="js/facebook-scripts.js"></script>
   <script src="https://apis.google.com/js/platform.js" async defer></script>
    <script type="text/javascript" src="js/google-scripts.js"></script>

    <div>    
      <h2>Inserisci i tuoi dati per effettuare il login nel sito</h2>
      <form id="login-form" method="POST" class="login-form" action="Login?action=Login"><br/>
        <div class="form-group">
          <label for="exampleInputEmail1">Email address</label>
          <input type="email" class="form-control" id="username" placeholder="Email">
        </div>
        <div class="form-group">
          <label for="exampleInputPassword1">Password</label>
          <input type="password" class="form-control" id="password" placeholder="Password">
        </div>

        <button type="submit" class="btn btn-primary">Accedi</button>
      </form>
      Oppure accedi con<br/>
      <fb:login-button scope="public_profile,email,user_birthday,user_location" onlogin="checkLoginState();">
      </fb:login-button>
      <div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark"></div><br/>      
      <fb:login-button scope="public_profile,email,user_birthday,user_location" onlogin="checkLoginState();">
      </fb:login-button>
    </div>
  </jsp:body>
</t:main-layout>