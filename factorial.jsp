<!DOCTYPE html>
<html>
<head>
    <title>Factorial Calculator</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #ff7eb3, #8e44ad);
            text-align: center;
            margin: 50px;
            color: white;
        }
        .container {
            background: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            display: inline-block;
            color: black;
        }
        h2 {
            color: #333;
            font-size: 28px;
            margin-bottom: 20px;
        }
        input[type="text"] {
            padding: 12px;
            width: 250px;
            border: 2px solid #ccc;
            border-radius: 8px;
            font-size: 16px;
            text-align: center;
        }
        input[type="submit"] {
            padding: 12px 25px;
            background: #28a745;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.3s ease;
        }
        input[type="submit"]:hover {
            background: #218838;
        }
        .result {
            margin-top: 20px;
            font-size: 20px;
            color: #007bff;
            font-weight: bold;
            padding: 10px;
            background: rgba(0, 123, 255, 0.1);
            border-radius: 8px;
            display: inline-block;
        }
        .error {
            color: red;
            font-size: 18px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Factorial Calculator</h2>
        <form method="post">
            <input type="text" name="num1" placeholder="Enter a number">
            <input type="submit" value="Calculate">
        </form>
        <div class="result">
            <% 
                String numStr = request.getParameter("num1");
                if (numStr != null ) {
                    try {
                        int num = Integer.parseInt(numStr);
                        long fact = 1;
                        for (int i = 1; i <= num; i++) {
                            fact *= i;
                        }
                        out.println("<p>Factorial of <strong>" + num + "</strong> is: <span style='color: #28a745; font-size: 22px;'>" + fact + "</span></p>");
                    } catch (NumberFormatException e) {
                        out.println("<p class='error'>Invalid input! Please enter a valid number.</p>");
                    }
                }
            %>
        </div>
    </div>
</body>
</html>
