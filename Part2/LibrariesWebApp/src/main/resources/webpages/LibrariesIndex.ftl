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
		
		<#import "/spring.ftl" as spring />

		<title>Libraries in Plymouth</title>
		<style>
			body {
				font-size: 20px
				font-color: #595958;
			}
			div {
				margin-top 20px;
				margin-bottom 20px;
			}
			.table {
			   	margin: auto;
			   	width: 50% !important; 
			}
			th {
   				text-align: center; 
			}
			p {
				text-align: left;
			}
			a {
				font-size: 16px;
				font-color: white;
			}
			.button {
				background-color: #bfbfbd;
				border: solid 1px #bfbfbd;
				padding: 30px 30px 30px 30px;
				font-size: 150%
				margin-left: auto;
				margin-right: auto;
				text-align: center;
			}
			a:link {
				text-decoration: none;
			}
			a:hover {
				background-color: #e6e6e3;
				text-decoration: none;
			}
			a:visited {
				text-decoration: none;
			}
			a:active {
				text-decoration: none;
			}
			div.container4 {
			    height: 10em;
			    position: relative }
			div.container4 p {
			    margin: 0;
			    background: light grey;
			    position: absolute;
			    top: 50%;
			    left: 50%;
			    margin-right: -50%;
			    transform: translate(-50%, -50%) }
			.center {
				text-align: center;
			}
		</style>
	</head>
	<body>
		<h1 class="center">Libraries in Plymouth</h1>
		<br>
			<div>
				<table class="table table-striped">
					<thead class="thead-dark">
						<tr>
							<th scope="col">Project Vision</th>
						</tr>
					</thead>
					<tbody>
						<tr>
						<th scope="row">
							<div>
							<p>
							Nowadays, people rely on online resources for almost everything, including reading news, books, magazines, or even 
							academic papers… etc… Yet, not all printed books have digital version available online, then, in order to get access 
							to the hardcopy, library is the best place to go. However, since people are not used to go to a library, they may 
							have difficulty in locating one nearby, therefore, this web application is designed and created.</p>
							<br>
							</p>
							<p>To facilitate people in Plymouth to locate and get information about their local libraries, this web application 
							is developed. Users can get detailed location of all libraries in Plymouth which are listed on the data page. 
							Not only with full addresses but also the map coordinates (latitude & longitude) of each library are provided. 
							Furthermore, in order to help users to find out more information about the libraries, websites are also listed.</p>
							</div>
						</th>
				</table>
			</div>
			<br>

			<table class="table table-light">
			  <thead>
			    <tr>
			      <th scope="col">Title</th>
			      <th scope="col">Original Dataset</th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <td>Location of Libraries in Plymouth</td>
			      <td><a href="https://storage.googleapis.com/thedataplace-plymouth/resources%2F7ca5c131-ba46-4133-ae6a-0dc8eb8a9281%2F040-02_location-of-libraries-2018.geojson" target="_blank">https://storage.googleapis.com/thedataplace-plymouth/resources%2F7ca5c131-ba46-4133-ae6a-0dc8eb8a9281%2F040-02_location-of-libraries-2018.geojson</a></td>
			    </tr>
			  </tbody>
			</table>
			<br>
			<br>
			<div class="d-grid gap-2 col-6 mx-auto">
  				<a class="btn btn-primary" type="button" href="<@spring.url '/website/html/ftl'/>" role="button" target="_blank">Go to Data Page</a>
  				<br>
  				<a class="btn btn-primary" type="button" href="<@spring.url '/api/geojson/libraries'/>" role="button" target="_blank"> Get JSON-LD</a>
			</div>
	</body>
</html>