<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<title>Bill</title>
<style type="text/css">
.error {
	color: red;
	font-style: italics;
}
</style>
</head>
<body style="background-color: LemonChiffon">
	<main class="container">
		<h1>Your order is successfully placed!</h1>

		<c:if test="${ orderResult !=null }">
			<div class="alert alert-success" role="alert">${orderResult}</div>
			<img src="/resources/pizzalisa.jpg">
		</c:if>

	</main>
</body>
</html>