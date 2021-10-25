<%
	int num1=Integer.parseInt(request.getParameter("num1"));
	int num2=Integer.parseInt(request.getParameter("num2"));
	String operator=request.getParameter("operator");
	int result=0;
	if(operator.equals("ADD")){
		result=num1+num2;
	}
	else if(operator.equals("SUB")){
		result=num1-num2; 
	}
	else if(operator.equals("MUL")){
		result=num1*num2;
	}
	else{
		result=num1/num2;
	}
	
%>
<h1>Calculation Result :</h1><hr>
<table border='2'>
	<tr>
		<th>Num1</th>
		<td><%=num1 %></td>
	</tr>
	<tr>
		<th>Num2</th>
		<td><%=num2 %></td>
	</tr>
	<tr>
		<th>Result</th>
		<td><%=result %></td>
	</tr>
</table>
