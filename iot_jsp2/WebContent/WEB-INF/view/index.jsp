
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%!
private String timeGMT(long timeFromNow) {
    Date date = new Date();                         // current system time as UTC (GMT)
    date.setTime(date.getTime() + timeFromNow);     // add the time from now
    DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss z"); 
    return dateFormat.format(date);
 }
%>
<%
if(user==null){
	//response.sendRedirect("/view/user/login");
}else{
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>IOT_TEST</title>
</head>
<body>
	<jsp:include page="/WEB-INF/view/common/header.jspf" flush="false" />
    <div class="container">

      <div class="starter-template">
        <h1><%=user.getUiName()%>님 환영합니다.</h1>
        <%
	Cookie[] cookies = request.getCookies();
	if(cookies!=null){
		out.println("갯수 : " + cookies.length);
		for(int i = 0 ; i<cookies.length; i++){
			out.println("<br>" + i + "번째 이름 : " + cookies[i].getName());
			out.println("<br>" + i + "번째 값 : " + cookies[i].getValue());
			out.println("<br>" + i + "번째 유효기간 : " + timeGMT(cookies[i].getMaxAge()));
		}
	}
%>
        <p class="lead">Use this document as a way to quickly start any new project.<br> All you get is this text and a mostly barebones HTML document.</p>
      </div>
    </div><!-- /.container -->
</body>
</html>
<%
}
%>