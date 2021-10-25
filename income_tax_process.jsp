<%
	String name=request.getParameter("name");
	long income=Long.parseLong(request.getParameter("income"));
	final long tax;
	if(income<=250000){
		 tax=0;
	}
	else if(income>=250001 && income<=500000){
		 tax=income*5/100;
	}
	else if(income>=500001 && income<=1000000){
		 tax=income*20/100;
	}
	else{
		 tax=income*50/100;
	}
	
%>
<h1>Income Tax Report</h1>
<table border='2'>
	<tr>
		<th>Name</th>
		<td><%=name %></td>
	<tr>
	<tr>
		<th>Income</th>
		<td><%=income %></td>
	</tr>
	<tr>
		<th>Tax</th>
		<td><%=tax%></td>
	</tr>
</table>
