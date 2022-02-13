<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<#import "/spring.ftl" as spring />

<html>
<head>
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
p {
	text-align: left;
}
a {
	font-size:16px;
}
.button {
	background-color: #bfbfbd;
	border: solid 1px #bfbfbd;
	padding: 10px 10px 10px 10px;
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
    background: yellow;
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
			<th scope="col" font-size="20">Project Vision</th>
		</tr>
	</thead>
	<tbody>
		<tr>
		<th scope="row">
			<div>
			<p>In order to help people in Plymouth to locate and get info about their libraries, this web application</p> 
			<p>is created. Detailed location of all libraries in Plymouth are listed. Not only with the addresses but</p> 
			<p>also the map coordinates (latitude & longitude) of each library are provided. Furthermore, to help users</p> 
			<p>to find out more about the libraries, websites are also listed.</p>
			</div>
		</th>
</table>
</div>
<br>

<table class="table table-striped">
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
<div class="container4">
	<p><a class="button" href="<@spring.url '/website/html/ftl'/>" target="_blank"> Go to data page</a></p>
</div>
<br><br>

</body>
</html>