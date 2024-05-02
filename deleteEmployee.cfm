<cfif isNumeric( URL.employee_id )>
	<cfquery name="deleteEmployee" datasource="coldfusion">
		DELETE FROM employee WHERE id = '#URL.employee_id#'
	</cfquery>

	<cfoutput>
		<h3>Employee information has been deleted.</h3>
	</cfoutput>
	<cfelse>
	<cfoutput>
		<h3>No employee ID specified for deletion.</h3>
	</cfoutput>
</cfif>
<br>
<a href="employeeList.cfm">
	<button> See updated data </button>
</a>

<style>
	body {
	text-align: center;
	margin-top: 20px;
	}
	button {
	background-color: #4CAF50;
	color: white;
	padding: 10px 10px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	text-decoration: none;
	display: inline-block;
	border: none;
	text-align: center;
	font-size: 16px;
	}
</style>