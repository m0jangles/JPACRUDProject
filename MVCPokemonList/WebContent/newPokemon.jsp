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
<c:if test="${empty pokemon }">
	<div class="container">
		<div class="row">
			
			<div class="col">
			<form action="addPokemon.do" method="POST">
			<br> 
		Name:
		<br>	
		<input type="text" name="name" value="Poke"/>
		<br> 
		<br> 
		Power:
		<br>
		<input type="text" name="power" value="has sharks that shoot lazers our of their eyes"/> 
		<br> 
		<br> 
		Hit Points:
		<br>
		<input type="number" name="hp" value="210"/>
		<br>
		<br>  
		Stage:
		<br> 
		<input type="number" name="stage" value="2"/>
		<br> 
		<br> 
		Set:
		<br>
		<select class="custom-select" name="set">

			<option value="Base">Base</option>
			<option value="Jungle">Jungle</option>
			<option value="Fossil">Fossil</option>
			<option value="Rocket">Rocket</option>

		</select>
		<br>
		<br>
		Image:
		<br> 
		<input type="text" name="pic" value="url" />
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
		Notes:
		<br> 
		<input type="text" name="notes" value="add some notes"/> 
		
	<button type="submit" class="btn btn-primary btn-lg btn-success" value="Submit">Submit</button>
	</form>
			
			</c:if>
			
			
			
			
			<c:if test="${not empty pokemon }">
				<h2>New Pokemon: </h2>
				${pokemon }
		
				<p>
				<h3>
					<strong>Name:</strong> ${pokemon.name}
				</h3>
				</p>
				<p>
				<h3>
					<strong>Power:</strong> ${pokemon.power}
				</h3>
				</p>

				<p>
				<h3>
					<strong>Hit Points:</strong> ${pokemon.hp}
				</h3>
				</p>
				<p>
				<h3>
					<strong>Set:</strong> ${pokemon.set}
				</h3>
				</p>
				<p>
				<h3>
					<strong>Status:</strong> ${pokemon.status}
				</h3>
				</p>
				<c:if test="${not empty pokemon.notes }">
					<p>
					<h3>
						<strong>Notes:</strong> ${pokemon.notes }
					</h3>
					</p>
				</c:if >
				<c:if test="${not empty pokemon.pic }">
					<p>
					<h3>${pokemon.pic }</h3>
					</p>
				</c:if>
				</c:if>
				<div class="col"></div>
			</div>
		</div>
	</div>
</body>
</html>