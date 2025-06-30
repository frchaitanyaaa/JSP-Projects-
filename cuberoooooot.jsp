<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form  method="post">
<input type="text" name="num" placeholder="Enter a number">
            <input type="submit" value="Calculate">
            </form>
            <%
            
            String st1 = request.getParameter("num");

            if (st1 != null && !st1.trim().isEmpty()) {
                try {
                    int value = Integer.parseInt(st1);
                    
                    float ans = value * value * value;
                    out.println("<p>Cube is: " + ans + "</p>");
                } catch (NumberFormatException e) {
                    out.println("<p style='color:red;'>Invalid input: please enter a valid number.</p>");
                }
            }
        

            
            %>
</body>
</html>