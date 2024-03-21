<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Adding New Request</title>
        <link rel="stylesheet" href="styles/main.css"> <!-- Assuming main.css includes imported styles from your uploaded CSS files -->
        <link rel="stylesheet" href="styles/addpage.css">
        <link rel="stylesheet" href="styles/button.css">
        <link rel="stylesheet" href="styles/font.css">
    </head>
    <body>
        <div class="container">
            <div class="head">
                <h1 class="title">Adding your new request!</h1>
            </div>
        </div>
        <div class="form_main">
            <form action="add" method="post">
                <p class="command1">Make your choice:</p>
                <label class="meomeo" for="current_class">Current class:</label>
                <input class="fillin" type="text" id="current_class" name="class" placeholder="Ex: SE1890, AI1924,...(required)" required>

                <label class="meomeo" for="current_subject">Subject:</label>
                <input class="fillin" type="text" id="current_subject" name="subject" value="${subject}" readonly>

                <!-- Include your tables for current and future time slots here -->
                <!-- Current time and slot table -->
                <label class="meomeo" for="table1">Current time and slot:</label>
                <table class="table1">
                    <thead>
                        <tr>
                            <th>Time</th>
                            <th>Mon</th>
                            <th>Tue</th>
                            <th>Wed</th>
                            <th>Thu</th>
                            <th>Fri</th>
                            <th>Sat</th>
                        </tr>
                    </thead>
                    <tbody name="slot">
                        <!-- Repeat this for Slot 1 to Slot 4 as needed -->
                        <tr>
                            <td>Slot 1</td>
                            <!-- Repeat for each day -->
                            <td><input type="checkbox" class="check" name="slot" value="Slot 1 Monday"></td>
                            <td><input type="checkbox" class="check" name="slot" value="Slot 1 Tuesday"></td>
                            <td><input type="checkbox" class="check" name="slot" value="Slot 1 Wednesday"></td>
                            <td><input type="checkbox" class="check" name="slot" value="Slot 1 Thursday"></td>
                            <td><input type="checkbox" class="check" name="slot" value="Slot 1 Friday"></td>
                            <td><input type="checkbox" class="check" name="slot" value="Slot 1 Satureday"></td>
                        </tr>
                        <!-- Repeat for Slot 2, Slot 3, Slot 4 -->
                        <tr>
                            <td>Slot 2</td>
                            <!-- Repeat for each day -->
                            <td><input type="checkbox" class="check" name="slot" value="Slot 2 Monday"></td>
                            <td><input type="checkbox" class="check" name="slot" value="Slot 2 Tuesday"></td>
                            <td><input type="checkbox" class="check" name="slot" value="Slot 2 Wednesday"></td>
                            <td><input type="checkbox" class="check" name="slot" value="Slot 2 Thursday"></td>
                            <td><input type="checkbox" class="check" name="slot" value="Slot 2 Friday"></td>
                            <td><input type="checkbox" class="check" name="slot" value="Slot 2 Satureday"></td>
                        </tr>
                        
                        <tr>
                            <td>Slot 3</td>
                            <!-- Repeat for each day -->
                            <td><input type="checkbox" class="check" name="slot" value="Slot 3 Monday"></td>
                            <td><input type="checkbox" class="check" name="slot" value="Slot 3 Tuesday"></td>
                            <td><input type="checkbox" class="check" name="slot" value="Slot 3 Wednesday"></td>
                            <td><input type="checkbox" class="check" name="slot" value="Slot 3 Thursday"></td>
                            <td><input type="checkbox" class="check" name="slot" value="Slot 3 Friday"></td>
                            <td><input type="checkbox" class="check" name="slot" value="Slot 3 Satureday"></td>
                        </tr>
                        
                        <tr>
                            <td>Slot 4</td>
                            <!-- Repeat for each day -->
                            <td><input type="checkbox" class="check" name="slot" value="Slot 4 Monday"></td>
                            <td><input type="checkbox" class="check" name="slot" value="Slot 4 Tuesday"></td>
                            <td><input type="checkbox" class="check" name="slot" value="Slot 4 Wednesday"></td>
                            <td><input type="checkbox" class="check" name="slot" value="Slot 4 Thursday"></td>
                            <td><input type="checkbox" class="check" name="slot" value="Slot 4 Friday"></td>
                            <td><input type="checkbox" class="check" name="slot" value="Slot 4 Satureday"></td>
                        </tr>
                        


                    </tbody>
                </table>

                

                <label class="meomeo" for="email">Email:</label>
                <input class="fillin" type="email" id="email" name="contact" placeholder="Enter your @fpt.edu.vn" required>

                <div class="button_send">
                    <button class="send_request" type="submit">Send request</button>
                </div>
            </form>
        </div>
        <script src="javascript/addpage.js"></script> <!-- Update the path according to your project structure -->
    </body>
</html>
