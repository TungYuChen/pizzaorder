<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://unpkg.com/@picocss/pico@latest/css/pico.min.css">
<title>Order your pizza</title>
<style type="text/css">
.error {
	color: red;
	font-style: italics;
}
</style>
</head>
<body style="background-color: LemonChiffon">
	<main class="container">
		<div>
			<h2 style="color: orange">Order Your Pizza</h2>
			<div class="grid">
				<form:form method="POST" action="/order" modelAttribute="newOrder">

					<div>
						<label for="pizzaType">Choose your pizza</label>
						<form:radiobutton path="pizzaType" value="1"
							label="Hawaiian $22.56" />
						&nbsp &nbsp
						<form:radiobutton path="pizzaType" value="2"
							label="Pepperoni $23.46" />
						<br>
						<form:radiobutton path="pizzaType" value="3"
							label="Canadian $25.78" />
						&nbsp &nbsp
						<form:radiobutton path="pizzaType" value="4"
							label="Meat lover's $26.88" />
						<form:errors path="pizzaType" cssClass="error" />
					</div>
					<br>

					<div>
						<label for="pizzaSize">Select your size & crust</label> <select
							name="pizzaSize" id="pizzaSize">
							<option value="1">14'' Large Thin (+$5)</option>
							<option value="2">14'' Large Pan (+$5)</option>
							<option value="3">12'' Medium Thin (+$3)</option>
							<option value="4">12'' Medium Pan (+$3)</option>
							<option value="5">9'' Small Thin</option>
							<option value="6">9'' Small Pan</option>
						</select>
					</div>

					<div>
						<label for="toppingList">Add your favorite toppings</label>
							<form:checkbox path="toppingList" value="Mushroom" label="Mushroom"/> <br> 
        					<form:checkbox path="toppingList" value="Red onion" label="Red onion"/>  <br>
       						<form:checkbox path="toppingList" value="Corn" label="Corn"/> <br>
       						<form:checkbox path="toppingList" value="Green pepper" label="Green pepper"/> <br>
					</div> <br>

					<div class="slider">
						<label for="tipRate">Tip 5-30%:</label><br>
						<form:input type="range" min="5" max="30" id="myRange"
							path="tipRate" value="this.value" />
					</div>

					<label>Customer Info</label>

					<label for="name">Name<input type="text" id="name"
						name="name" placeholder="Name" required>
					</label>
					<small>Please enter your name.</small>
					<br>
					<br>
					<form:errors path="name" cssClass="error" />
					<br>

					<label for="birthdate">Date of birth<input type="date"
						id="dob" name="dob" placeholder="Date of birth" required>
					</label>
					<small>Please enter your date of birth.</small>
					<br>
					<br>
					<form:errors path="dob" cssClass="error" />
					<br>

					<label for="email">Email address<input type="email"
						id="email" name="email" placeholder="Email address" required>
					</label>
					<small>Please enter your email.</small>
					<br>
					<br>
					<form:errors path="email" cssClass="error" />
					<br>

					<input type="submit" class="btn btn-primary" value="Order">


				</form:form>

				<div>
					<img src="/resources/pizza.jpg">
					<c:if test="${ orderResult !=null }">
						<div class="alert alert-success" role="alert">${orderResult}</div>
					</c:if>
				</div>


			</div>
		</div>

	</main>
</body>
</html>