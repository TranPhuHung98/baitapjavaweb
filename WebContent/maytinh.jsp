<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="maytinh.jsp" method="post">
	<%
	long a,b,kq=0;
		String txta = request.getParameter("txta");
		String txtb = request.getParameter("txtb");
		String btn = request.getParameter("btn1");
		
		if(txta!= "" && txta!= null && txtb!="" && txtb!= null){
			a=Long.parseLong(txta);
			b=Long.parseLong(txtb);
			if(btn.equals("+")){
				kq=a+b;
				/* out.print(a+"+"+b+"="+kq); */
			}else
				if(btn.equals("-")){
					kq = a-b;
				/* 	out.print(a+"-"+b+"="+kq); */
				}else
					if(btn.equals("*")){
						kq = a*b;
						/* out.print(a+"*"+b+"="+kq); */
					}else{
						if(b==0)
							out.print("Ban da nhap sai gia tri");
						else{
							kq = a/b;
							/* out.print(a+"/"+b+"="+kq); */
						}
					}
		}else kq=0;
	%>
	a=
	<input type="number" name="txta" value="<%=txta == null ? "" : txta%>"><br>
	b=
	<input type="number" name="txtb" value="<%=txtb == null ? "" : txtb%>"><br>
	kq=
	<input type="number" name="txtkq" value="<%=txta=="" || txtb=="" ? "" : kq%>"><br>
	<input type="submit" name="btn1" value="+">
	<input type="submit" name="btn1" value="-">
	<input type="submit" name="btn1" value="*">
	<input type="submit" name="btn1" value="/">
	
</form>

</body>
</html>