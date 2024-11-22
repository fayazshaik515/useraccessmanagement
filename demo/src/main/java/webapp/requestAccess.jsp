<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Request Access</title>
</head>
<body>
    <h1>Request Access to Software</h1>
    
    <form action="requestAccess" method="post">
        <label for="softwareId">Select Software:</label>
        <select name="softwareId" required>
            <!-- Populate dynamically with available software -->
            <option value="1">Software A</option>
            <option value="2">Software B</option>
        </select><br>

        <label for="accessType">Select Access Type:</label>
        <select name="accessType" required>
            <option value="Read">Read</option>
            <option value="Write">Write</option>
            <option value="Admin">Admin</option>
        </select><br>

        <label for="reason">Reason for Request:</label>
        <textarea name="reason" required></textarea><br>

        <input type="hidden" name="userId" value="${sessionScope.userId}"> <!-- User ID stored in session -->
        <button type="submit">Submit Request</button>
    </form>

    <c:if test="${param.status == 'success'}">
        <p>Your request has been submitted successfully.</p>
    </c:if>

    <c:if test="${param.status == '
