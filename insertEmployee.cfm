<cfquery name="formdata" datasource="coldfusion">
		INSERT INTO employee (first_name, last_name, role, cf_pro)
		VALUES (
		<cfqueryparam value=#Form.firstName# cfsqltype="CF_SQL_VARCHAR">,
		<cfqueryparam value=#Form.lastName# cfsqltype="CF_SQL_VARCHAR">,
		<cfqueryparam value=#Form.roleOption# cfsqltype="CF_SQL_VARCHAR">,
		<cfqueryparam value=#form.proInCf# cfsqltype="CF_SQL_BOOLEAN">
		)
</cfquery>

<cfoutput>
	<h1>Employee Added</h1>
	You have added #Form.FirstName# #Form.Lastname# to the employee database.
	<br><br>
	<a href="employeeList.cfm">
		<button>See all data </button>
	</a>
	<br>
	<br>
	<a href="index.cfm">
		<button>Back to the form</button>
	</a>
</cfoutput>

<style>
	body {
	text-align: center;
	}

	table {
	border-collapse: collapse;
	width: 50%;
	margin: 0 auto;
	text-align: left;
	}

	th, td {
	padding: 10px;
	}

	input[type="text"] {
	width: 100%;
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	}

	input[type="submit"],
	button {
	background-color: #4CAF50;
	color: white;
	padding: 10px 10px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	margin-top: 10px;
	text-decoration: none;
	display: inline-block;
	border: none;
	text-align: center;
	font-size: 16px;
	}

	input[type="submit"]:hover,
	button:hover {
	background-color: #45a049;
	}
</style>
