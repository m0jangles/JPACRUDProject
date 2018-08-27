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
				<h2>Pokemon Stats</h2>

				<!-- <img src="http://pod.pokellector.com/cards/119/Alakazam.BS.1.png"/> -->
				<p>
				<h3>
					<strong>Name:</strong>
				</h3>
				<h4>${pokemon.name}</h4>
				</p>
				<p>
				<h3>
					<strong>Power:</strong>
				</h3>
				<h4>${pokemon.power}</h4>

				</p>

				<p>
				<h3>
					<strong>Hit Points:</strong>
				</h3>
				<h4>${pokemon.hp}</h4>

				</p>
				<p>
				<h3>
					<strong>Set:</strong>
				</h3>
				<h4>${pokemon.set}</h4>

				</p>
				<p>
				<h3>
					<strong>Status:</strong>
				</h3>
				<h4>${pokemon.status}</h4>

					</p>
				
					<c:if test="${not empty pokemon.notes }">
						<p>
						<h3>
							<strong>Notes:</strong> ${pokemon.notes }
						</h3>
						</p>
					</c:if>
					<c:if test="${not empty pokemon.pic }">
						<p>
						<h3>${pokemon.pic }</h3>
						</p>
					</c:if>
					<form action="updatePokemon.do" method="GET">
						<input type="hidden" name="id" value="${pokemon.id }">
						<!-- <input type="text" name="id" /> -->
						<button type="submit"
							class="btn btn-primary btn-lg btn-block btn-success"
							value="Update">Update</button>
						<!-- <input type="submit" value="Find Pokemon" /> -->
					</form>

					<form action="deletePokemon.do" method="POST">
						<input type="hidden" name="id" value="${pokemon.id }"> <br>
						Name:<br> <input type="text" name="name"
							value="${pokemon.name }" />

						<button type="submit" class="btn btn-primary btn-lg btn-success"
							value="Delete">Delete</button>
					</form>

					<div class="col"></div>
			</div>
		</div>
	</div>
	<a href="index.do">Return to Main Menu</a>
</body>
</html>