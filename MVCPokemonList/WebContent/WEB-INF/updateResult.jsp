<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Pokemon successfully updated</title>
</head>

<body>
  <c:choose>
    <c:when test="${! empty pokemon}">
      <p>Pokemon successfully updated</p>
      <p>${pokemon }</p>
    </c:when>
    <c:otherwise>
      <p>Failed to update Pokemon</p>
    </c:otherwise>
  </c:choose>
   <a href="index.do">Return to Main Menu</a>

</body>
</html>