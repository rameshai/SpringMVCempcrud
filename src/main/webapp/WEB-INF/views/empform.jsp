<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<style>
  /* General body styling for better font and background */
  body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #e6f2ff;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
  }

  h1 {
    color: #0077b6;
    text-align: center;
    margin-bottom: 20px;
    font-weight: 700;
    letter-spacing: 1px;
  }

  .container {
    background-color: #ffffff;
    width: 420px;
    padding: 30px 40px;
    border-radius: 15px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.15);
    transition: box-shadow 0.3s ease-in-out;
  }

  .container:hover {
    box-shadow: 0 12px 30px rgba(0,0,0,0.25);
  }

  .form table {
    width: 100%;
    border-collapse: separate;
    border-spacing: 0 15px;
  }

  .form td:first-child {
    padding-right: 15px;
    font-weight: 600;
    color: #333;
    vertical-align: middle;
    width: 110px;
  }

  .form input[type="text"], .form input[type="number"], .form input[type="submit"] {
    width: 100%;
    padding: 8px 12px;
    border: 1.8px solid #ccc;
    border-radius: 8px;
    font-size: 1rem;
    transition: border-color 0.3s ease;
  }

  /* Highlight input on focus */
  .form input[type="text"]:focus, 
  .form input[type="number"]:focus {
    border-color: #0077b6;
    outline: none;
    box-shadow: 0 0 6px #90caf9;
  }

  /* Submit button styling */
  .form input[type="submit"] {
    background-color: #0077b6;
    border: none;
    color: white;
    font-weight: 600;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  .form input[type="submit"]:hover {
    background-color: #005f86;
  }

  /* Align submit button properly */
  .form tr:last-child td {
    text-align: right;
  }
</style>

<div class="container">
  <h1>Add New Employee</h1>
  <div class="form">
    <form:form method="post" action="save">  
      <table> 
        <tr>  
          <td>Id :</td> 
          <td><form:input path="id" /></td>
        </tr>  
        <tr>  
          <td>Name :</td> 
          <td><form:input path="name" /></td>
        </tr>  
        <tr>  
          <td>Salary :</td>  
          <td><form:input path="salary" /></td>
        </tr> 
        <tr>  
          <td>Designation :</td>  
          <td><form:input path="designation" /></td>
        </tr> 
        <tr>  
          <td></td>  
          <td><input type="submit" value="Save" /></td>  
        </tr>  
      </table>  
    </form:form>
  </div>  
</div>
