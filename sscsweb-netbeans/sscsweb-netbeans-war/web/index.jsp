<%-- 
    Document   : index
    Created on : 19-nov-2016, 17.30.48
    Author     : elia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:main-layout pageTitle="Home">
  <jsp:attribute name="head">      
  </jsp:attribute>
  <jsp:body>
    <div>    
      <div class="container">
        <div class="row">
          <img src="img/mubit.jpg" height="100px" alt="Logo MuBIT"></img>
        </div>
        <div class="row">    
          <div class="col-xs-8 col-xs-offset-2">
            <div class="input-group">
              <div class="input-group-btn search-panel">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                  <span id="search_concept">Tipologia</span> <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="#hardware">Hardware</a></li>
                  <li><a href="#software">Software</a></li>
                  <li><a href="#libri">Libri></a></li>
                  <li><a href="#altro">Altro</a></li>
                </ul>
              </div>
              <input type="hidden" name="search_param" value="all" id="search_param">         
              <input type="text" class="form-control" name="x" placeholder="Oggetto da cercare...">
              <span class="input-group-btn">
                <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search"></span></button>
              </span>
            </div>
          </div>
        </div>
      </div>
    </div>
    <script type="text/javascript">
      $(document).ready(function(e){
        $('.search-panel .dropdown-menu').find('a').click(function(e) {
          e.preventDefault();
          var param = $(this).attr("href").replace("#","");
          var concept = $(this).text();
          $('.search-panel span#search_concept').text(concept);
          $('.input-group #search_param').val(param);
        });
      });
    </script>
  </jsp:body>
</t:main-layout>
