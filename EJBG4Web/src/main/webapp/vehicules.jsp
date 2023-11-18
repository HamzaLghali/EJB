<%@page import="entities.Vehicule"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="VehiculeController" method="get">
		Matricule : <input name="matricule" type="text"><br />
		<button>Envoyer</button>
	</form>
	<%
	if (request.getAttribute("vehicules") != null) {
		List<Vehicule> vehicules = (List<Vehicule>) request.getAttribute("vehicules");

		for (Vehicule v : vehicules) {
	%>
	<%=v.getMatricule()%><br />
	<%
	}
	}
	%>
	
	 <ul>
        <c:forEach items="${vehicules}" var="v">
            <li>${v.id} - ${v.matricule}</li>
        </c:forEach>
    </ul>

</body>
</html>