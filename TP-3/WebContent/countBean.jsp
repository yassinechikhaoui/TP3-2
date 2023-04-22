<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>beans</title>
</head>
<body>
<p style="color:red;"> on repére le beans par le nom nomBeans<br>
<jsp:useBean id="idBean" class="beans.SimpleBean"
scope="session"/>

<p> on accede au computer avec la methode getCompteur:
<br>compteur = <%= idBean.getCompteur() %> 
<hr>
<p style="color:seagreen;">on incremente le compteur avec la methode increment <% idBean.increment(); %>

<p >on peut acceder a la propriete par la balise get property : <br>
<jsp:getProperty name="idBean" property="compteur"/>
</body> 
</html>