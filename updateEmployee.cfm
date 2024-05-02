<cfquery name="updateEmployee" datasource="coldfusion">
	UPDATE employee
	SET
		first_name = '#Form.firstName#',
		last_name = <cfqueryparam value="#Form.lastName#" cfsqltype="CF_SQL_VARCHAR">,
		role =<cfqueryparam value="#form.role#" cfsqltype="CF_SQL_VARCHAR">,
		cf_pro = <cfqueryparam value="#form.cfpro#" cfsqltype="CF_SQL_BOOLEAN">
	WHERE
		id = #form.employee_id#
</cfquery>

<cfoutput>
	<h1>Employee info updated</h1>
	You have Updated information for #Form.FirstName# #Form.Lastname# into the employee database.
	<br><br>
	<a href="employeeList.cfm">
		<button>Updated Employee List </button>
	</a>
	<br>
	<br>
	<a href="index.cfm">
		<button>Insert New Data</button>
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