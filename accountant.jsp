<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Accountant Dashboard</title>
    <style>
        body {
            background-color: #121212;
            color: #E0E0E0;
            margin: 0;
            padding: 0;
            font-family: 'Helvetica Neue', Arial, sans-serif;
        }

        header {
            background-color: #1F1F1F;
            padding: 20px;
            text-align: center;
            border-bottom: 3px solid #333;
        }

        header h1 {
            color: #FFA000;
            margin: 0;
            font-size: 2em;
        }

        header h2 {
            color: #A5D6A7;
            margin: 10px 0 0;
            font-size: 1.5em;
        }

        main {
            padding: 20px;
            text-align: center;
        }

        main p {
            margin: 10px 0;
        }

        .form-container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #2E2E2E;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }

        .form-container h3 {
            color: #FFCA28;
            margin-bottom: 20px;
        }

        .form-container label {
            display: block;
            margin: 10px 0;
            color: #BBDEFB;
        }

        .form-container input[type="radio"] {
            margin-right: 10px;
        }

        .form-container .button-container {
            display: flex;
            justify-content: space-around;
            margin-top: 20px;
        }

        .form-container button {
            padding: 10px 20px;
            font-size: 1em;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .form-container #execute-btn {
            background-color: #FF5722;
            color: #FFFFFF;
        }

        .form-container #clear-btn {
            background-color: #D32F2F;
            color: #FFFFFF;
        }

        footer {
            padding: 20px;
            text-align: center;
            border-top: 3px solid #333;
            margin-top: 20px;
        }

        footer p {
            margin: 0;
        }

        .results {
            margin-top: 20px;
            text-align: left;
        }
    </style>
</head>

<body>
<header>
    <h1>Welcome To The Summer 2024 Project 3 Enterprise System </h1>
    <h2>A Servlet/JSP-based Multi-tiered Enterprise Application Using A Tomcat Container</h2>
</header>
<main>
    <p>You are connected to the Project 3 Enterprise System database as an <span style="color:#FF5252;">accountant-level</span> user.</p>
    <p>Select an operation to perform:</p>
    <div class="form-container">
        <h3>Operations</h3>
        <form method="post" action="Accountanthome">
            <label>
                <input type="radio" name="select" value="maxStatus">
                <span>Get The Maximum Status Value Of All Suppliers</span>
            </label>
            <label>
                <input type="radio" name="select" value="totalWeight">
                <span>Get The Total Weight Of All Parts</span>
            </label>
            <label>
                <input type="radio" name="select" value="numSuppliers">
                <span>Get The Number Of Suppliers</span>
            </label>
            <label>
                <input type="radio" name="select" value="workersInfo">
                <span>Get The Name And Number Of Workers Of The Job With The Most Workers</span>
            </label>
            <label>
                <input type="radio" name="select" value="supplierList">
                <span>List The Name And Status Of Every Supplier</span>
            </label>
            <div class="button-container">
                <button type="submit" id="execute-btn">Execute Command</button>
                <button type="reset" id="clear-btn">Clear Result</button>
            </div>
        </form>
    </div>
    <div class="results">
        <h3>Execution Results:</h3>
        <div id="result" name="result"></div>
    </div>
</main>
<footer>
    <p>All execution results will appear above.</p>
</footer>
</body>

</html>
