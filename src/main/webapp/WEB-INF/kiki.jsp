<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<c:set var="nom"  value="kodjo"/>
<c:set var="prenom>">komlan</c:set>
<h1> <c:out value="Bonjour ${nom} ${prenom}"/> </h1>

<c:set var="sexe" value="${Auteur.sexe }"></c:set>
<c:set var="age" value="${Auteur.age }"></c:set>

<h1> <c:out value="${age}" />  </h1>
<h1> <c:out value="${sexe}" />  </h1>




<c:forEach items="${noms}" var="nom" begin="0" end="1">
   <c:out value="${nom}"></c:out>
</c:forEach>



<form method="post" action="kiki">

  <label for="nom">Nom:</label>
  <input type="text" name="nom" id="nom">
  <label for="pass"></label> 
   <input type="password"name="password" id="pass">
  
  <input type="submit">
  

</form>


<c:if test="${nom=='koffi' && password=='afi' }"> <p> <c:out value="Login ${nom }"></c:out> </p> </c:if>

<ul>

<c:if test="${Auth==true }">

<h1>Liste des Auteurs</h1>

	<c:forEach var="auteur" items="${auteurs}">
	
	        <ul>
	           <li><c:out value="${auteur.nom }"/> 
	               <c:out value="${auteur.prenom}"/>
	           </li>
	           
	        </ul>
	   
		           
	           
	   
	   
	    </c:forEach>

</c:if>

   


</ul>








</body>
</html>