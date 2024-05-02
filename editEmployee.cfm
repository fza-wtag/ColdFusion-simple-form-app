<cfquery name="getempdata" datasource="coldfusion">
	SELECT * FROM employee
	WHERE id = <cfqueryparam value="#URL.employee_id#" cfsqltype="cf_sql_integer">
</cfquery>

<cfoutput query="getempdata">
	<h2>Edit Employee Information - #getempdata.first_name#</h2>
	<form action="updateEmployee.cfm" method="post">
		<input type="hidden" name="employee_id" value="#getempdata.id#">
		<table>
			<tr>
				<td>First Name:</td>
				<td>
					<input type="text" name="firstName" value="#getempdata.first_name#" required>
				</td>
			</tr>
			<tr>
				<td>Last Name:</td>
				<td>
					<input type="text" name="lastName" value="#getempdata.last_name#" required>
				</td>
			</tr>
			<tr>
				<td>Role:</td>
				<td>
					<input type="text" name="role" value="#getempdata.role#" required>
				</td>
			</tr>
			<tr>
				<td>CF Pro</td>
				<td>
					<input type="text" name="cfPro" value="#getempdata.cf_pro#" required>
				</td>
			</tr>
		</table>
		<br>
		<input type="submit" value="Update">
	</form>
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
	padding: 10px 20px;
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