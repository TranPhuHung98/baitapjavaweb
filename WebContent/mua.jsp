<%@page import="java.util.ArrayList"%>
<%@page import="bean.gioHangBean"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="bo.gioHangBo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String tenSach = request.getParameter("ts");
		String maSach = request.getParameter("ms");
		String tacGia = request.getParameter("tg");
		String giaTam = request.getParameter("gia");
		String soLuong = request.getParameter("soLuong");
		String action = request.getParameter("action");

		if (giaTam != null) {
			long gia = Long.parseLong(giaTam);
			gioHangBo gh = null;
			//Kiem tra xem da tao session gh chua
			if (session.getAttribute("gh") == null) {
				gh = new gioHangBo();
				session.setAttribute("gh", gh);
			}
			//lay session: gh luu vao bien: gh
			gh = (gioHangBo) session.getAttribute("gh");
			//thay doi bien: goi ham them
			gh.themSach(maSach, tenSach, tacGia, gia, 1);
			//  luu session gh
			session.setAttribute("gh", gh);
			//hien thi gio hang
			ArrayList<gioHangBean> ds = gh.ds;
			
			if (session.getAttribute("un") != null) {
				response.sendRedirect("giohangscreen.jsp");
			} else {
				session.setAttribute("saukhidangnhap", "chuyendengiohang");
				response.sendRedirect("formdangnhap-login.jsp");
			}

		}
		if (action != null && action.equals("xoa")) {
			gioHangBo gh = null;
			//Kiem tra xem da tao session gh chua
			if (session.getAttribute("gh") == null) {
				gh = new gioHangBo();
				session.setAttribute("gh", gh);
			}
			//lay session: gh luu vao bien: gh
			gh = (gioHangBo) session.getAttribute("gh");
			//thay doi bien: goi ham xoa
			gh.xoaSach(maSach);
			//luu session gh
			session.setAttribute("gh", gh);
			ArrayList<gioHangBean> ds = gh.ds;
			response.sendRedirect("giohangscreen.jsp");
		}
		
		if (action != null && action.equals("thayDoiSoLuong")) {
			gioHangBo gh = null;
			//Kiem tra xem da tao session gh chua
			if (session.getAttribute("gh") == null) {
				gh = new gioHangBo();
				session.setAttribute("gh", gh);
			}
			//lay session: gh luu vao bien: gh
			gh = (gioHangBo) session.getAttribute("gh");
			//thay doi bien: goi ham thay doi
			gh.thayDoiSoLuongSach(maSach, Integer.parseInt(soLuong));
			//luu session gh
			session.setAttribute("gh", gh);
			ArrayList<gioHangBean> ds = gh.ds;
			response.sendRedirect("giohangscreen.jsp");
		}
	%>
</body>
</html>
