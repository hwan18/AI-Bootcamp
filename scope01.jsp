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
	pageContext.setAttribute("page", "pageOK");
	/* can be used on a different page but has to add more */
	request.setAttribute("request","requestOK");
	/* can used on different pages as long as the browser is opened */
	session.setAttribute("session", "sessionOK");
	/* application's scope is server, tomcat server */
	application.setAttribute("application", "applicationOK");
	
	String pageOK = (String)pageContext.getAttribute("page");
	String requestOK = (String)request.getAttribute("request");
	String sessionOK = (String)session.getAttribute("session");
	String applicationOK = (String)application.getAttribute("application");
	
	%>
	
	<%
		RequestDispatcher rd = request.getRequestDispatcher("scope02.jsp");
		/* brings scope02.jsp request and response objects and use them */	
		rd.forward(request,response);
	%>
	
	page:<%=pageOK %><br>
	request:<%=requestOK %><br>
	session:<%=sessionOK %><br>
	application:<%=applicationOK %><br>

</body>
</html>
