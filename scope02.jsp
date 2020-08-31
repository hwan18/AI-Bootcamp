<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
	/* page can only be used on this page */
	String pageOK = (String)pageContext.getAttribute("page");
	/* can be used on a different page but has to add more */
	String requestOK = (String)request.getAttribute("request");
	/*session's scope(일정영역) is web browser, can used on different pages as long as the browser is opened */
	String sessionOK = (String)session.getAttribute("session");
	/* application's scope is server, tomcat server */
	String applicationOK = (String)application.getAttribute("application");
	
	%>
	
	page:<%=pageOK %><br>
	request:<%=requestOK %><br>
	session:<%=sessionOK %><br>
	application:<%=applicationOK %><br>

</body>
</html>
