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
				<form action="deletePokemon.do" method="POST">
					<input type="hidden" name="id" value="${pokemon.id }"> <br>
					<input type="hidden" name="id" value="${pokemon.power }"> <br>
					<input type="hidden" name="id" value="${pokemon.hp }"> <br>
					<input type="hidden" name="id" value="${pokemon.set }"> <br>
					<input type="hidden" name="id" value="${pokemon.pic }"> <br>
					<input type="hidden" name="id" value="${pokemon.status }"> <br>
					<input type="hidden" name="id" value="${pokemon.notes }"> <br>
					Name:<br> <input type="text" name="name"
						value="${pokemon.name }" />

					<button type="submit" class="btn btn-primary btn-lg btn-success"
						value="Submit">Submit</button>
				</form>

				<div class="col"></div>
			</div>
		</div>
	</div>
</body>
</html>