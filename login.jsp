<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><b>LOGIN PAGE</b></h1>
<form method="post">
enter login-id: <input type="text" name="num1">
enter password: <input type="text" name="passkey">
<input type="submit">
</form>
<% 
String str1=request.getParameter("num1");
String str2=request.getParameter("passkey");
String loginid = "chaitanya";
String key = "12345";
try{
	if(str1!=null && str2!=null){
		if (str1.equals(loginid) && str2.equals(key)){
			out.println("<h3 style='color:green;'>LOGIN SUCCESSFUL!!</h3>");
		} else {
	        out.println("<h3 style='color:red;'>Invalid login ID or password.</h3>");
	    }



}
}
catch (Exception e){
	out.println("<H3 style ='color:red;'>invalid input ! please enter a number");
}
%>

</body>
</html>