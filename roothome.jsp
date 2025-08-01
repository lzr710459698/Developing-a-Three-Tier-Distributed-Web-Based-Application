<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CNT 4714 Remote Database Management System</title>
    <style>
        body {
            background-color: black;
            text-align: center;
            font-family: Arial;
        }
        h1 {
            color: yellow;
            font-size: 30pt;
        }
        h2 {
            color: lime;
            font-size: 25pt;
        }
        h3 {
            color: white;
            font-size: 15pt;
        }
        .red {
            color: red;
        }
        .lime {
            color: lime;
        }
        .yellow {
            color: yellow;
        }
        .main {
            color: white;
        }
        input[type="submit"] {
            color: lime;
            background: #665D1E;
            font-weight: bold;
            font-size: 16pt;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .reset-form {
            color: red;
            background: #665D1E;
            font-weight: bold;
            font-size: 16pt;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .clear-result {
            color: yellow;
            background: #665D1E;
            font-weight: bold;
            font-size: 16pt;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        textarea {
            background: blue;
            color: white;
            font-family: Verdana;
            font-size: 15pt;
            width: 950px;
            height: 280px;
            border: none;
            border-radius: 4px;
            padding: 10px;
        }
        table {
            font-family: Verdana;
            border: 3px solid black;
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
        }
        th, td {
            padding: 10px;
            border: 1px solid black;
            color: white;
        }
        .results {
            margin-top: 20px;
            color: white;
            width: 80%;
            margin: 0 auto;
        }
    </style>
    <script type="text/javascript">
        function clearResult() {
            document.getElementById("resultsDiv").innerHTML = "";
        }
        function resetForm() {
            document.getElementById("cmd").value = "";
        }
    </script>
</head>
<body>
    <h1>Welcome to the Summer 2024 Project 3 Enterprise System</h1>
    <h2>A Servlet/JSP-based Multi-tiered Enterprise Application Using A Tomcat Container</h2>
    <hr>
    <h3 class="main">You are connected to the Project 3 Enterprise System database as a <span class="red">root-level</span> user.<br>
        Please enter any SQL query or update command in the box below.</h3>
    <form action="ExecuteSQLServlet" method="post">
        <textarea id="cmd" name="sqlCommand"><%= request.getAttribute("sqlCommand") != null ? request.getAttribute("sqlCommand") : "" %></textarea><br><br>
        <input type="submit" value="Execute Command" class="lime">
        <button type="button" onclick="resetForm();" class="reset-form">Reset Form</button>
        <button type="button" onclick="clearResult();" class="clear-result">Clear Result</button>
    </form>
    <h3 class="main"><br>All execution results will appear below this line.</h3>
    <hr>
    <div class="results" id="resultsDiv">
        <h3>Execute Results:</h3>
        <%= request.getAttribute("sqlResult") != null ? request.getAttribute("sqlResult") : "" %>
    </div>
</body>
</html>
