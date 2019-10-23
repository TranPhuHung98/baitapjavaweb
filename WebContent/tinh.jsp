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
		String txta = request.getParameter("txta");
		String txtb = request.getParameter("txtb");
		String btn = request.getParameter("btn1");
		String txtn = request.getParameter("txtn");
		
		long a,b,kq=0;
		if(txta!= "" && txtb!="" && txta!=null && txtb!=null){
			a=Long.parseLong(txta);
			b=Long.parseLong(txtb);
			if(btn.equals("+")){
				kq=a+b;
				out.print(a+"+"+b+"="+kq);
			}else
				if(btn.equals("-")){
					kq = a-b;
					out.print(a+"-"+b+"="+kq);
				}else
					if(btn.equals("*")){
						kq = a*b;
						out.print(a+"*"+b+"="+kq);
					}else{
						if(b==0)
							out.print("Ban da nhap sai gia tri");
						else{
							kq = a/b;
							out.print(a+"/"+b+"="+kq);
						}
					}
		}else {
			if(txtn!=""&&txtn!=null){
				int n = Integer.parseInt(txtn);
				//Kiểm tra xem đã tạo sắn 1 session chưa
				if(session.getAttribute("ss")==null)	session.setAttribute("ss", 0);
				//THao tác 
				//B1: gán session vào biến.
				int s=(int)session.getAttribute("ss");
				//B2: thay đổi biến. 
				s=s+n;
				//B3: lưu biến. 
				session.setAttribute("ss", s);
				out.print("Tong: "+s);
			}
			else out.print("Vui long nhap gia tri");
		}
	%>
</body>
</html>