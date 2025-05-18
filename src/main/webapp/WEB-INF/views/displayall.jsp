<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
        }

        h1 {
            color: #333;
            text-align: center;
        }

        table {
            margin: 0 auto;
            border-collapse: collapse;
            width: 80%;
            background-color: white;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px 15px;
            border: 1px solid #ddd;
            text-align: center;
        }

        th {
            background-color: #2c3e50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .add-btn {
            background-color: blue;
            color: white;
            padding: 10px 15px;
            text-decoration: none;
            border-radius: 10px;
            display: inline-block;
            margin-top: 20px;
        }

        .add-btn:hover {
            background-color: darkblue;
        }

        .action-link {
            text-decoration: none;
            color: #2980b9;
        }

        .action-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <h1>Employees List</h1>

    <table>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Salary</th>
            <th>Designation</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="emp" items="${elist}">
            <tr>
                <td>${emp.id}</td>
                <td>${emp.name}</td>
                <td>${emp.salary}</td>
                <td>${emp.designation}</td>
                <td><a class="action-link" href="editemp/${emp.id}">Update</a></td>
                <td><a class="action-link" href="deleteemp/${emp.id}" onclick="return confirm('Are you sure you want to delete this employee?')">Delete</a></td>
            </tr>
        </c:forEach>
    </table>

    <div style="text-align: center;">
        <a href="empform" class="add-btn">Add New Employee</a>
    </div>

</body>
</html>
