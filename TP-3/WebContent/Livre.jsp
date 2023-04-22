<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
label{
color:green;
pading:50;

}
input[type="text"] {
  border-radius:5px;
  border: 1px solid gray;
  box-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
  padding: 2px;
  font-size: 15px;
  width: 200px;
}

</style>
<body>
<jsp:useBean id="livre" class="beans.Livre" scope="session"></jsp:useBean>
 <h1>Livre</h1>

    <p><b>Auteur : </b>  <%= livre.getAuteur() %></p>
    <p><b>Titre : </b>  <%= livre.getTitre() %></p>
    <p><b>editeur:</b> <%= livre.getEditeur() %></p>

    <form action="livre.jsp" method="post">
    <hr>
        <label>Auteur :</label>
        <input type="text" id="auteur" name="auteur" value="<%= livre.getAuteur() %>"><br><br>

        <label>Titre :</label>&nbsp&nbsp&nbsp
       <input type="text" id="titre" name="titre" value="<%= livre.getTitre() %>"><br><br>
        <label>Editeur</label>&nbsp&nbsp
        <input type="text" id="editeur" name="editeur" value="<%= livre.getEditeur() %>"><br><br>

        <input type="submit" style=" width: 143px; position: absolute; left: 68px; background-color: palegreen;"value="Enregistrer">
        <hr>
    </form>
<br>
    <%
        if(request.getMethod().equals("POST")) {
            String auteur = request.getParameter("auteur");
            String titre = request.getParameter("titre");
            String editeur = request.getParameter("editeur");
            livre.setAuteur(auteur);
            livre.setTitre(titre);
            livre.setEditeur(editeur);
        }
    %>

    <p><b>Nouvel auteur :</b> <%= livre.getAuteur() %></p>
    <p><b>Nouvel titre : </b> <%= livre.getTitre() %></p>
    <p><b>Nouvel editeur : </b> <%= livre.getEditeur() %></p>
</body>
</html>