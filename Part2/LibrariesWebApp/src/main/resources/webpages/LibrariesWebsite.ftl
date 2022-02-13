<html>
<head>
<title>Libraries in Plymouth</title>
<style>
body {
	font-family: monospace;
	font-color: #595958;
}

table {
	border-collapse: collapse;
}
th {
	border: solid 1px blue;
	background-color: #e6e6e3;
	padding: 5px 5px 5px 5px; 
}
td {
	border: solid 1px blue;
	padding: 5px 5px 5px 5px; 
}
div {
	margin-bottom 10px;
}
</style>
</head>

<body>
	<div>
		<h2>Location of Libraries in Plymouth</h2>
	</div>

	<table>
			<tr>
				<th>FID</th>
				<th>Library Name</th>
				<th>Address</th>
				<th>Postcode</th>
				<th>Latitude</th>
				<th>Longitude</th>
				<th>Website</th>
				
			</tr>
		
			<#list libraryList as temp_libraryList>			
				<tr>
					<td>${temp_libraryList.fid}</td>
					<td>${temp_libraryList.libraryName}</td>
					
					<td>${temp_libraryList.addressLine1}
					
						<#if temp_libraryList.addressLine2??>
							, ${temp_libraryList.addressLine2}
						</#if>
						
						<#if temp_libraryList.addressLine3??>
							, ${temp_libraryList.addressLine3}
						</#if>
					</td>
					
					<td>${temp_libraryList.postcode}</td>
					<td>${temp_libraryList.latitude?string.computer}</td>
					<td>${temp_libraryList.longitude?string.computer}</td>
					<td>${temp_libraryList.website}</td>
				</tr>
			</#list>
		</table>
			
	</body>
</html>