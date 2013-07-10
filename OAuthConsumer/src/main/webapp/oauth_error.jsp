<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.io.StringWriter" %>
<%@ page import="org.springframework.security.oauth.consumer.filter.OAuthConsumerContextFilter" %>
<%@ taglib prefix="authz" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>

<body>
<div id="container">

    <ul id="mainlinks">
        <li><a href="<c:url value="/index.jsp"/>">home</a></li>
        <authz:authorize ifNotGranted="ROLE_USER">
            <li><a href="<c:url value="/login.jsp"/>">login</a></li>
        </authz:authorize>
        <li><a href="<c:url value="/OAuthProducer/sample"/>">Server String</a></li>
    </ul>

    <div id="content">
        It appears that the OAuth mechanism failed.
        <c:remove scope="session" var="OAUTH_FAILURE_KEY"/>

    </div>
</div>
</body>
</html>