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
		String kt = "sai";
		String unBack = request.getParameter("username");
		kt = request.getParameter("kt");
	%>
	<form action="check.jsp" method="post">
		<%
			if (kt.equals("sai")) {
		%>
			Username <input type="text" name="txtun"
				value="<%=unBack != null ? unBack : ""%>"><br> Password
			<input type="password" name="txtpw"><br> Vai tro <select
				name="vaitro">
				<option value="1">Giao vien</option>
				<option value="2">Hoc sinh</option>
			</select><br>
			<button type="submit">Dang nhap</button>
			<%
				if (unBack != null)
						out.print("Ban da dang nhap sai");
			%>
		<%
			}else{
				out.print("Hello motherfucker");
			}
		%>
	</form>

</body>
</html>