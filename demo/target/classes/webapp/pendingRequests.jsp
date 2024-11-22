<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Pending Access Requests</title>
</head>
<body>
    <h1>Pending Access Requests</h1>
    
    <table>
        <thead>
            <tr>
                <th>Employee Name</th>
                <th>Software</th>
                <th>Access Type</th>
                <th>Reason</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <!-- Loop through requests from the database -->
            <tr>
                <td>Employee 1</td>
                <td>Software A</td>
                <td>Write</td>
                <td>Need write access to update data</td>
                <td>
                    <form action="approveRequest" method="post" style="display:inline;">
                        <input type="hidden" name="requestId" value="1">
                        <button type="submit" name="status" value="Approved">Approve</button>
                    </form>
                    <form action="approveRequest" method="post" style="display:inline;">
                        <input type="hidden" name="requestId" value="1">
                        <button type="submit" name="status" value="Rejected">Reject</button>
                    </form>
                </td>
            </tr>

            <tr>
                <td>Employee 2</td>
                <td>Software B</td>
                <td>Admin</td>
                <td>Need admin access for system configuration</td>
                <td>
                    <form action="approveRequest" method="post" style="display:inline;">
                        <input type="hidden" name="requestId" value="2">
                        <button type="submit" name="status" value="Approved">Approve</button>
                    </form>
                    <form action="approveRequest" method="post" style="display:inline;">
                        <input type="hidden" name="requestId" value="2">
                        <button type="submit" name="status" value="Rejected">Reject</button>
                    </form>
                </td>
            </tr>
        </tbody>
    </table>

    <c:if test="${param.status == 'success'}">
        <p>The request has been successfully processed.</p>
    </c:if>

    <c:if test="${param.status == 'error'}">
        <p>There was an error processing the request. Please try again.</p>
    </c:if>
</body>
</html>
