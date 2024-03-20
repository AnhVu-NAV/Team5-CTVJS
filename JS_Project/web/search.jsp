<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="styles/header_footer.css">
        <link rel="stylesheet" href="styles/allRequestStyle.css">
        <link rel="stylesheet" href="styles/reset.css">
        <link rel="stylesheet" href="styles/fonts.css">
        <title>All Requests</title>
    </head>
    <body>
        <div class="header">
            <ul id="header-title">
                <span class="hamburger">&#9776;</span> <!-- Hamburger Icon -->
                <li class="homeLogo"><a id="homeLogo" href="#">FPTU Change Your Dump Class!!</a></li>
                <li><a id="itemheader" class="nav-item" href="add?subject=${sessionScope.selectedSubject}">Add Request</a></li>
            </ul>
        </div>
        <div class="maincontent">
            <div class="wrapper">
                <div class="table">
                    <div class="row headerRow">
                        <div class="cell">NO</div>
                        <div class="cell">Subject</div>
                        <div class="cell">Class</div>
                        <div class="cell">Slot</div>
                        <div class="cell">Contact</div>
                    </div>
                    <c:forEach items="${requestScope.data}" var="c" varStatus="status">
                        <div class="row">
                            <div class="cell" data-title="NO">${status.index + 1}</div>
                            <div class="cell" data-title="Subject">${c.subject}</div>
                            <div class="cell" data-title="Class">${c.classid}</div>
                            <div class="cell" data-title="Slot">${c.slot}</div>
                            <div class="cell" data-title="Contact"><a href="#" onclick="contactHim('${c.id}')">Contact</a></div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <div class="footer">
            <h4>Web Change Schedule được làm bởi CTV Team 5 của JS Club</h4>
            <div>&#169; team5_jsclub</div>
        </div>

        <script>
            document.addEventListener('DOMContentLoaded', function () {
                const hamburger = document.querySelector('.hamburger');
                const navItems = document.querySelectorAll('.nav-item');

                hamburger.addEventListener('click', function () {
                    navItems.forEach(item => {
                        item.classList.toggle('active');
                    });
                });
            });

            function contactHim(id) {
                var confirmed = confirm("Bạn có muốn contact người này?");
                if (confirmed) {
                    // Redirect to the servlet with id as a query parameter
                    window.location.href = 'contact?id=' + id;
                }
            }
        </script>
    </body>
</html>


