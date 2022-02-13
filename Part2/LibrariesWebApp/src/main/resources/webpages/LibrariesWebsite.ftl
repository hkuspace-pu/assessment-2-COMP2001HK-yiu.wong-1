<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<html>
<head>
<title>Libraries in Plymouth</title>
<style>
body {
	font-color: #595958;
}
table {
	border-collapse: collapse;
}
th {
	border: solid 1px #ccccd9;
	background-color: #e6e6e3;
	padding: 5px 5px 5px 5px; 
}
td {
	border: solid 1px #ccccd9;
	padding: 5px 5px 5px 5px; 
}
div {
	margin-top 20px;
	margin-bottom 20px;
}
</style>
</head>

<body>
	<div>
		<h2>Location of Libraries in Plymouth</h2>
	</div>

	<table class="table">
  		<thead class="thead-dark">
			<tr>
				<th scope="col">FID</th>
				<th scope="col">Library Name</th>
				<th scope="col">Address</th>
				<th scope="col">Postcode</th>
				<th scope="col">Latitude</th>
				<th scope="col">Longitude</th>
				<th scope="col">Website</th>
			</tr>
		</thead>
		<tbody>
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
					<td><a href="${temp_libraryList.website}">${temp_libraryList.website}</a></td>
				</tr>
			</#list>
		</tbody>
	</table>			
</body>
</html>