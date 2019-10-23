<%@page import="bean.gioHangBean"%>
<%@page import="bo.gioHangBo"%>
<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<table class="table table-bordered">
		<%
			gioHangBo gh;
			if (session.getAttribute("gh") != null) {
				gh = (gioHangBo) session.getAttribute("gh");
				for (gioHangBean g : gh.ds) {
		%>
		<tr>
			<td><%=g.getTenSach()%></td>
			<td><%=g.getTacGia()%></td>
			<td><%=g.getGia()%></td>
			<td><%=g.getSoLuong()%></td>
			<!-- tao form co 1 the input de sua so luong -->
			<td>
				<form action="mua.jsp" method="post">
					<input type="hidden" value="thayDoiSoLuong" name="action">
					<input type="hidden" value="<%=g.getMaSach()%>" name="ms">
					<input type="number" min="1" value="<%=g.getSoLuong()%>" name="soLuong"> 
					<input
						type="submit" value="lưu">
				</form>
			</td>
			<!-- tao nut luu de luu chinh sua -- kiem tra so luong nhap vao -->

			<td><%=g.getThanhTien()%></td>
			<!-- tao the a de thuc hien chuc nang xoa -->
			<td><a href="mua.jsp?ms=<%=g.getMaSach()%>&action=xoa">Xoá </a></td>
		</tr>
		<%
			}
		%>

	</table>
	<div>
		Tong:
		<%=gh.tong()%></div>
	<%
		}
	%>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>