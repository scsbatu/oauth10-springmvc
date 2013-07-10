<%@ taglib prefix="authz" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
   <authz:authorize ifAllGranted="ROLE_USER">
    <script type='text/javascript'>
   
    </script>
  </authz:authorize>
</head>
<body>

  

  <div id="content">
    <h2>Home</h2>

     <authz:authorize ifNotGranted="ROLE_USER">
      <h2>Login</h2>
      <form action="<c:url value="/login.do"/>" method="post">
        <p><label>Username: <input type='text' name='j_username' value="suraj"></label></p>
        <p><label>Password: <input type='text' name='j_password' value="123"></label></p>
        
        <p><input name="login" value="Login" type="submit"></p>
      </form>
    </authz:authorize>
    <authz:authorize ifAllGranted="ROLE_USER">
      <div style="text-align: center"><form action="<c:url value="/logout.do"/>"><input type="submit" value="Logout"></form></div>
      
     

    
    </authz:authorize>
  </div>

 
</body>
</html>
