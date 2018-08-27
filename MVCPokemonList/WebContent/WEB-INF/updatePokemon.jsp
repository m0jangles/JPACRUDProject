<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>

	<div class="container">
		<div class="row">

			<div class="col">
				<form action="updatePokemon.do" method="POST">
					<input type="hidden" name="id" value="${pokemon.id }"> <br>
					Name:
					<br> 
					<input type="text" name="name" value="${pokemon.name }" /> 
					<br> 
					<br> 
						
					Power:
					<br> 
					<input type="text" name="power" value="${pokemon.power }" /> 
					<br> 
					<br>
						
					Hit Points:
					<br> 
					<input type="number" name="hp" value="${pokemon.hp }" />
					<br> 
					<br>
						 
					Stage:
					<br> 
					<input type="number" name="stage" value="${pokemon.stage }" />
					<br> 
					<br> 
							
					Set:
					<br> 
					<select class="custom-select" name="setName">

						<option value="Base">Base</option>
						<option value="Jungle">Jungle</option>
						<option value="Fossil">Fossil</option>
						<option value="Rocket">Rocket</option>

					</select>
					<br> 
					<br>
					 
					Image:
					<br> 
					<input type="text" name="pic" value="${pokemon.pic }" />
					<br> 
					<br> 
						
					Status:
					<br> 
					<select class="custom-select" name="status">

						<option value="Have it">Have it</option>
						<option value="Need it">Need it</option>

					</select> 
					
					<br> 
					<br> 
					Notes
					<br> 
					<input type="text" name="notes" value="1, mint condition" />

					<button type="submit" class="btn btn-primary btn-lg btn-success"
						value="Update">Update!</button>
				</form>

				<div class="col"></div>
			</div>
		</div>
	</div>
</body>
</html>