<%@ taglib prefix="authz" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<body>
<div id="container">

  <div id="content">
    <h1>Produce Data</h1>
    
   	${sample} 
   	
   	<a href="<c:url value="/OAuthProducer/samplewithtoken"/>">View 	second server string</a>
  </div>
</div>
</body>
</html>