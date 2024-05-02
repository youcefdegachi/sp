<%--
  Created by IntelliJ IDEA.
  User: Kader
  Date: 3/1/2024
  Time: 11:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>toutal</title>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
<%@include file="menu.jsp"%>
  <h1>Page Bonjour</h1>
  <%String Message = (String) request.getAttribute("Message");
    out.print(Message);
  %>
  <h3>
    ${ StudentCount}
  </h3>
  <form method="post" >
    <label for="Nom">Name : </label><br>
    <input type="text" name="Nom" id="Nom" placeholder="Your Name" class="form-group"/><br>
    <br>
    <input type="submit" class="btn btn-primary" />
  </form>
  <br>
  <br>
  <h3>
    <%

      Integer studentCountObj = (Integer) request.getAttribute("StudentCount");
      int studentCount = (studentCountObj != null) ? studentCountObj.intValue() : 0;

      String[] studentsName = (String[]) request.getAttribute("StudentsName");
      out.print("<table class='table table-striped'>");
      out.print("<tr>");
      out.print("<th>Id</th>");
      out.print("<th>Nom</th>");
      out.print("<th>age</th>");
      out.print("<th>action</th>");
      out.print("</tr>");

      for(int i = 0; i < studentCount; i++ ){
        out.print("<tr>");
        out.print("<th>Etudiant"+(i+1)+"#</th>");
        out.print("<td>"+studentsName[i]+"</td>");
        out.print("<td>"+studentsName[i]+"</td>");
        out.print("<td><input type='button' value='delete'> onclick='removeItem(this)' </td>");
        out.print("</tr>");
      }

      out.print("</table>");
    %>
  </h3>
</div>

</body>
</html>

