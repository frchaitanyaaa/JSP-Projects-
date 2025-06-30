<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>hello world</h1>
<form method="post">
enter first no: <input type="text" name="num1">
enter second no: <input type="text" name="num2">
<input type="submit">
</form>
<% 
String str1=request.getParameter("num1");
String str2=request.getParameter("num2");
int a,b,sum;
try{
	if(str1!=null && str2!=null){
a=Integer.parseInt(str1);
b=Integer.parseInt(str2);
sum=a+b;
out.println("<h3>  result is" +sum);
}
}
catch (Exception e){
	out.println("<H3 style ='color:red;'>invalid input ! please enter a number");
}
%>

</body>
</html>