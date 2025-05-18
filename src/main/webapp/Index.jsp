<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Home Page</title>
<style>
body, html {
    height: 100%;
    margin: 0;
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
}

.container {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
    min-height: 100vh;
    padding: 20px;
}

h1 {
    color: #2c3e50;
    margin-bottom: 10px;
}

p.description {
    font-size: 20px;
    color: #555;
    margin-bottom: 30px;
}

ul.features {
    list-style-type: none;
    padding: 0;
    font-size: 18px;
    color: #444;
    margin-bottom: 30px;
}

ul.features li::before {
    content: "✔️ ";
    margin-right: 5px;
    color: green;
}

.button {
    background-color: blue;
    color: white;
    border: none;
    border-radius: 10px;
    padding: 10px 20px;
    text-decoration: none;
    font-size: 16px;
    cursor: pointer;
    transition: 0.3s;
}

.button:hover {
    background-color: yellow;
    color: black;
}
</style>
</head>
<body>
<div class="container">
    <h1>Welcome to Employee Management System</h1>
    <p class="description">Manage your organization’s employee records efficiently.</p>

    <!-- Key Features -->
    <ul class="features">
        <li>View all employee details</li>
        <li>Add new employee records</li>
        <li>Update existing information</li>
        <li>Delete employees securely</li>
    </ul>

    <!-- CTA Button -->
    <a href="viewemp" class="button">View All Employee Records</a>
</div>
</body>
</html>
