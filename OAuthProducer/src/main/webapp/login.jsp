<%@ page import="org.springframework.security.core.AuthenticationException"%>
<%@ page import="org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter"%>
<%@ taglib prefix="authz" uri="http://www.springframework.org/security/tags"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%> --%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%> 
<authz:authorize ifAllGranted="ROLE_USER">
	<c:redirect url="index.jsp" />
</authz:authorize>

<!DOCTYPE html>
<html>
<body>



	<div id="content">
		<c:if test="${!empty sessionScope.SPRING_SECURITY_LAST_EXCEPTION}">
			<div class="error">
				<h2>Woops!</h2>

				<p>
					Your login attempt was not successful. (<%=((AuthenticationException) session.getAttribute(AbstractAuthenticationProcessingFilter.SPRING_SECURITY_LAST_EXCEPTION_KEY))
						.getMessage()%>)
				</p>
			</div>
		</c:if>
		<c:remove scope="session" var="SPRING_SECURITY_LAST_EXCEPTION" />

		<authz:authorize ifNotGranted="ROLE_USER">
			<h2>Login</h2>

			<form action="<c:url value="/login.do"/>" method="post">
				<p>
					<label>Username: <input type='text' name='j_username'
						value="suraj"></label>
				</p>
				<p>
					<label>Password: <input type='text' name='j_password'
						value="123"></label>
				</p>

				<p>
					<input name="login" value="Login" type="submit">
				</p>
			</form>
		</authz:authorize>
	</div>
</body>
</html>
