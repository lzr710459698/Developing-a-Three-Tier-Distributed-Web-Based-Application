<!doctype html>
<html>
<head>
   <title>CNT 4714 Enterprise Database Management System</title>
   <style>
        body {
            background-color: black;
            color: white;
            font-family: 'Arial', sans-serif;
            text-align: center;
            margin: 0;
            padding: 0;
        }
        h1 {
            color: red;
            font-size: 28pt;
            margin-top: 20px;
        }
        h2 {
            color: skyblue;
            font-size: 24pt;
        }
        input, textarea {
            color: yellow;
            background: #665D1E;
            border: 1px solid #333;
            padding: 5px;
            font-size: 16pt;
            width: 100%;
            box-sizing: border-box;
        }
        p {
            color: white;
            font-size: 13pt;
        }
        .red {
            color: red;
        }
        .green {
            color: lime;
        }
        table {
            margin: 20px auto;
            border-collapse: collapse;
            width: 80%;
        }
        th, td {
            border: 1px solid white;
            padding: 10px;
            text-align: center;
        }
        th {
            background: #333;
        }
        td {
            background: #665D1E;
        }
        fieldset {
            border: 1px solid #444;
            margin: 20px auto;
            width: 80%;
            padding: 10px;
        }
        legend {
            color: white;
            font-size: 18px;
        }
        .button {
            color: yellow;
            background: #228B22;
            border: none;
            padding: 10px 20px;
            font-size: 16pt;
            cursor: pointer;
            margin-top: 10px;
            margin-right: 10px;
        }
        .button-clear {
            background: #B22222;
        }
        .button:hover {
            background: #32CD32;
        }
        .button-clear:hover {
            background: #DC143C;
        }
    </style>
    <script type="text/javascript">
        function clearText() {
            var textareas = document.getElementsByTagName('textarea');
            for (var i = 0; i < textareas.length; i++) {
                textareas[i].value = "";
            }
            document.getElementById('results').innerHTML = "";
        }
    </script>
</head>
<body>
    <h1>Welcome to the Summer 2024 Project 3 Enterprise Database System</h1>
    <h2>Data Entry Application</h2>
    <hr>
    <p class="main">You are connected to the Project 3 Enterprise System database as a <span class="red">data-entry-level</span> user. <br />
        Enter the data values in a form below to add a new record to the corresponding database table. <br />
    </p>
    
    <form action="DataEntryServlet" method="post">
        <input type="hidden" name="table" value="suppliers">
        <fieldset>
            <legend>Suppliers Record Insert</legend>
            <table>
                <tr>
                    <th>snum</th>
                    <th>sname</th>
                    <th>status</th>
                    <th>city</th>
                </tr>
                <tr>
                    <td><textarea name="snum"></textarea></td>
                    <td><textarea name="sname"></textarea></td>
                    <td><textarea name="status"></textarea></td>
                    <td><textarea name="city"></textarea></td>
                </tr>
            </table>
            <input type="submit" value="Enter Supplier Records Into Database" class="button">
            <input type="button" value="Clear Data and Results" class="button button-clear" onclick="clearText();">
        </fieldset>
    </form>

    <form action="DataEntryServlet" method="post">
        <input type="hidden" name="table" value="parts">
        <fieldset>
            <legend>Part Record Insert</legend>
            <table>
                <tr>
                    <th>pnum</th>
                    <th>pname</th>
                    <th>color</th>
                    <th>weight</th>
                    <th>city</th>
                </tr>
                <tr>
                    <td><textarea name="pnum"></textarea></td>
                    <td><textarea name="pname"></textarea></td>
                    <td><textarea name="color"></textarea></td>
                    <td><textarea name="weight"></textarea></td>
                    <td><textarea name="city"></textarea></td>
                </tr>
            </table>
            <input type="submit" value="Enter Part Records Into Database" class="button">
            <input type="button" value="Clear Data and Results" class="button button-clear" onclick="clearText();">
        </fieldset>
    </form>

    <form action="DataEntryServlet" method="post">
        <input type="hidden" name="table" value="jobs">
        <fieldset>
            <legend>Job Record Insert</legend>
            <table>
                <tr>
                    <th>jnum</th>
                    <th>jname</th>
                    <th>numworkers</th>
                    <th>city</th>
                </tr>
                <tr>
                    <td><textarea name="jnum"></textarea></td>
                    <td><textarea name="jname"></textarea></td>
                    <td><textarea name="numworkers"></textarea></td>
                    <td><textarea name="city"></textarea></td>
                </tr>
            </table>
            <input type="submit" value="Enter Job Records Into Database" class="button">
            <input type="button" value="Clear Data and Results" class="button button-clear" onclick="clearText();">
        </fieldset>
    </form>

    <form action="DataEntryServlet" method="post">
        <input type="hidden" name="table" value="shipments">
        <fieldset>
            <legend>Shipment Record Insert</legend>
            <table>
                <tr>
                    <th>snum</th>
                    <th>pnum</th>
                    <th>jnum</th>
                    <th>quantity</th>
                </tr>
                <tr>
                    <td><textarea name="snum"></textarea></td>
                    <td><textarea name="pnum"></textarea></td>
                    <td><textarea name="jnum"></textarea></td>
                    <td><textarea name="quantity"></textarea></td>
                </tr>
            </table>
            <input type="submit" value="Enter Shipment Records Into Database" class="button">
            <input type="button" value="Clear Data and Results" class="button button-clear" onclick="clearText();">
        </fieldset>
    </form>

    <p class="main"><br /> All execution results will appear below this line. </p>
    <hr>
    <center>
        <p id="results">
            <b class="main">Database Results:</b><br>
            <%= request.getAttribute("resultMessage") != null ? request.getAttribute("resultMessage") : "" %>
        </p>    
    </center>
</body>
</html>
