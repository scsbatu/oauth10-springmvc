<%@ taglib prefix="authz"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<div id="container">

	<div id="content">


		<authz:authorize ifNotGranted="ROLE_USER">
			<p>
				<a href="<c:url value="login.jsp"/>">Login</a>
			</p>
		</authz:authorize>
		<authz:authorize ifAllGranted="ROLE_USER">
			<p>
				<a href="<c:url value="/OAuthProducer/sample"/>">View
					server string</a>
			</p>
		</authz:authorize>
	</div>
</div>
</body>
</html>