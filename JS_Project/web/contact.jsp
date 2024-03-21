<%-- 
    Document   : contact
    Created on : Mar 21, 2024, 12:15:47 AM
    Author     : ducta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Form</title>
        <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #e9eff1;
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                overflow: auto;
            }
            .container {
                max-width: 400px;
                width: 100%;
                margin: 0 20px;
                box-sizing: border-box;
            }
            form {
                background-color: #ffffff;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
                text-align: center;
            }
            h2 {
                font-size: 1.5em;
                color: #333;
                margin-bottom: 20px;
            }
            .meomeo {
                font-size: 16px;
                color: #333;
                margin-bottom: 8px;
                display: block;
            }
            .fillin {
                width: calc(100% - 20px); /* Adjust width considering padding */
                padding: 10px;
                margin-bottom: 20px;
                border-radius: 5px;
                border: 1px solid #ccc;
            }
            input[type="submit"] {
                width: 100%;
                padding: 10px;
                border-radius: 5px;
                border: none;
                background-color: #4CAF50;
                color: white;
                font-size: 16px;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }
            input[type="submit"]:hover {
                background-color: #45a049;
            }
            p {
                color: #333;
                margin-top: 20px;
            }

            /* Responsive */
            @media (max-width: 480px) {
                .container {
                    width: 90%;
                    margin: 0 auto;
                }
                form {
                    padding: 15px;
                }
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h2>You are not FPTU Student?</h2>
            <form action="contact" method="post">
                <label class="meomeo" for="email">Your Email:</label>
                <input class="fillin" type="email" id="email" name="contact" placeholder="e.g., AnhThuyHE16xxxx@fpt.edu.vn" required>
                <input type="submit" value="Submit">
            </form>

            <%-- Kiểm tra và hiển thị email nếu tồn tại --%>
            <% if (request.getAttribute("email") != null) { %>
            <p>Contact this guy: ${email}</p>
            <% } %>
        </div>
    </body>
</html>
