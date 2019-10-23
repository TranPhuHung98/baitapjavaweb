<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="formdangnhap.jsp"%>
	<%@ include file="hienThiSach.jsp"%>
	<%
		if (session.getAttribute("un") != null) {
			out.print(session.getAttribute("un").toString());
			out.print("man hinh home");
					
		} else {
			/* response.sendRedirect("formdangnhap-login.jsp"); */
		}
	%>
</body>
</html>