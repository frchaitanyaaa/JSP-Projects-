<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post">
enter string: <input type="text" name="stg1">
<input type="submit">
<%
String str1=request.getParameter("stg1");   //gets the value of a form input
if (str1  !=null){       //checks if the user has actually entered something
	char[] charArray = str1.toCharArray();    //converts the input string into an array of characters
	String reversed = "";                    //Creates an empty string called reversed
    for (int i = charArray.length - 1; i >= 0; i--) {     //A loop that starts from the last character of charArray and goes to the first character
        reversed += charArray[i];
        out.println("<h3>Reversed String: " + reversed + "</h3>");
    }
}
%>
</form>
</body>
</html>