<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:h="http://java.sun.com/jsf/html"
      xmlns:f="http://java.sun.com/jsf/core">
<head>
    <title>Admin Login</title>
    <style>
        /* Your CSS here */
    </style>
</head>
<body>
    <h:form id="loginForm">
        <h:panelGroup>
            <h:outputLabel for="username" value="Username" />
            <h:inputText id="username" value="#{adminbean.username}" required="true" />
        </h:panelGroup>
        <h:panelGroup>
            <h:outputLabel for="password" value="Password" />
            <h:inputSecret id="password" value="#{adminbean.password}" required="true" />
        </h:panelGroup>
        <h:commandButton value="Submit" action="#{adminbean.validateadminlogin()}" />
    </h:form>
</body>	
</html>
