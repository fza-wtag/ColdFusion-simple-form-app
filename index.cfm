<cfset roles = [
	'TSE',
	'JSE',
	'SE',
	'SSE',
	'COO',
	'CTO',
	'CEO'
]>

<cfoutput>
	<h2>Insert Employe Information</h2>

	<form action="insertEmployee.cfm" method="Post">
		<table>
			<tr>
				<td>First Name:</td>
				<td>
					<input type="text" name="firstName" required>
				</td>
			</tr>

			<tr>
				<td>Last Name:</td>
				<td>
					<input type="text" name="lastName" required>
				</td>
			</tr>

			<tr>
				<td>Role</td>
				<td>
					<select name="roleOption">
						<cfloop index="role" array=#roles#>
							<option>#role#</option>
						</cfloop>
					</select>
				</td>
			</tr>

			<tr>
				<td>Pro in CF</td>
				<td>
					<input type="radio" id="proInCfYes" name="proInCf" value=true checked>
					<label for="proInCfYes">Yes</label>
					<input type="radio" id="proInCfNo" name="proInCf" value=false>
					<label for="proInCfNo">No</label>
				</td>
			</tr>
		</table>

		<br>
		<input type="submit" value="Submit">
		<input type="Reset" value="Clear Form">
	</form>

	<form method="post">
		<a href="employeeList.cfm"> See all data</a>
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

	input[type="text"],
	select {
	width: 100%;
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	}

	input[type="radio"] {
	margin-right: 5px;
	}

	input[type="submit"],
	input[type="reset"] {
	background-color: #4CAF50;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	margin-top: 10px;
	}

	input[type="submit"]:hover,
	input[type="reset"]:hover {
	background-color: #45a049;
	}

	form {
	margin-top: 20px;
	}
</style>