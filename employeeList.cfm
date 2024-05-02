<cfquery name="getalldata" datasource="coldfusion">
	SELECT * FROM employee
</cfquery>

<cfoutput>
	<cfif getalldata.RecordCount GT 0>
		<h2> Employee Information </h2>
		<table>
			<tr>
				<th>Name</th>
				<th>Role</th>
				<th>CF Status</th>
				<th>Action</th>
			</tr>
			<cfoutput query="getalldata">
				<tr>
					<td>#getalldata.first_name# #getalldata.last_name#</td>
					<td>#getalldata.role#</td>
					<td>
						<cfif getalldata.cf_pro>
							Professional
							<cfelse>
							Learner
						</cfif>
					</td>
					<td>
						<a href="editEmployee.cfm?employee_id=#getalldata.id#"><button>Edit</button></a>
						<a href="deleteEmployee.cfm?employee_id=#getalldata.id#"><button>Delete</button></a>
					</td>
				</tr>
			</cfoutput>
		</table>
		<p>
			Go to <a href="index.cfm">Insert Data Page</a>
		</p>
	<cfelse>
		<h3>
			No data found. Please upload some from <a href="index.cfm">here</a>
		</h3>
	</cfif>

	<br>
</cfoutput>

<style>
	body {
	text-align: center;
	}
	table {
	border-collapse: collapse;
	width: 100%;
	}

	th, td {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
	}

	th {
	background-color: #f2f2f2;
	}

	tr:nth-child(even) {
	background-color: #f2f2f2;
	}

	tr:hover {
	background-color: #ebebeb;
	}
</style>