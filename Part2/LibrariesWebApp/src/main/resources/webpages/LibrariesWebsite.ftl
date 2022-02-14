<html>
	<head>

		<meta charset="utf-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1">

		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		
		<!-- Optional theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
		
		<!-- Latest compiled and minified JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
		
		<title>Libraries in Plymouth</title>
		<style>
			body {
				font-color: #595958;
			}
			div {
				margin-top: 20px;
				margin-bottom: 20px;
			}
			.center {
				text-align: center;
			}
		</style>
	</head>

	<body>
		<div>
			<h2 class="center">Location of Libraries in Plymouth</h2>
		</div>
		<br><br>
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
						<th scope="row">${temp_libraryList.fid}</th>
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