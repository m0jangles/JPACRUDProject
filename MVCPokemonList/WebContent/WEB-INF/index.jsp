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
<title>Home</title>
</head>
<body>
<style type="text/css">
   body { background: #D6EAF8 !important;}/* Adding !important forces the browser to overwrite the default style applied by Bootstrap */
   
</style>
	<div class="container">
		<div class="row">
			<div class="col"></div>
			<div class="col">
			<img src="https://vignette.wikia.nocookie.net/information-dex-pokemon/images/5/52/%D0%92%D0%B5%D0%BD%D1%83%D0%B7%D0%B0%D0%B2%D1%80.png/revision/latest?cb=20140913082504&path-prefix=ru"/>
				<p class="text-center">
				<h3 id="appname">Poke* List</h3></p>
				<br> <a class="btn btn-primary btn-lg btn-block btn-success"
					href="newPokemon.jsp" role="button">CREATE YOUR OWN</a>
			<br>
			<!-- <h5>Search for Base Set Pokemon by name</h5>
				<br>
				
				
				<form action="getPokemon.do" method="GET">
					<input type="text" name="keyword" />
					<button type="submit" class="btn btn-primary btn-lg btn-block btn-success"
						value="Find Pokemon">SEARCH</button>
					<input type="submit" value="Find Pokemon" />
				</form> -->
			
				<form action="list.do" method="GET">
					<button type="submit"
						class="btn btn-primary btn-lg btn-block btn-success"
						value="Get list">GET BASE SET LIST</button>
				</form>
				<table>
					<c:forEach var="p" items="${allPokemon }">

						<tr>
							<td><a href="getById.do?id=${p.id }">${p.name }</td>
							</a>
						</tr>

					</c:forEach>
				</table>
				</div>
				<div class="col">
			</div>
		</div>
	</div>
</body>
</html>