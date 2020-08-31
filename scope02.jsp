<%
   
   String pageOk = (String)pageContext.getAttribute("page");
   String requestOk = (String)request.getAttribute("request");
   String sessionOk = (String)session.getAttribute("session");
   String applicationOk = (String)application.getAttribute("application");
   
   %>
   
   page값 : <%=pageOk %><br>
   request값 : <%=requestOk %><br>
   session값 : <%=sessionOk %><br>
   application값 : <%=applicationOk %>
