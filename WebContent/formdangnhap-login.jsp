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
	<%
		if (session.getAttribute("un") != null) {
			response.sendRedirect("formdangnhap-t1.jsp");
		} else {
	%>
	<form action="kiemtradangnhap.jsp" method="post"
		style="padding-left: 20px;">
		un:<br> <input type="text" name="txtun"><br> pw:<br>
		<input type="password" name="txtpw"><br>
		<br> <input type="submit" name="but1" value="login"
			class="btn-primary">
	</form>
	<%
		}
	%>

</body>
</html>