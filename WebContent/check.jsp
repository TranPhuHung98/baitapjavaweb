<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		String un = request.getParameter("txtun");
		String pw = request.getParameter("txtpw");
		String vt = request.getParameter("vaitro");
		out.print(vt);
		if(vt.equals("1") && un.equals("gv") && pw.equals("123")){
			response.sendRedirect("login.jsp?kt=dung");
		}else response.sendRedirect("login.jsp?kt=sai&username="+un);
		//gv us: gv, pw: 123
		//sv us: sv,pw: 111
	%>

</body>
</html>