<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>

<div class="container">
    <%@include file="menu.jsp"%>
    <div class="row">
        <div class="col-8">
            <h1><%= "Hello World!" %>
            </h1>
            <br/>
            <ul>
                <li><a href="hello-servlet" class="btn btn-success">Hello Servlet</a></li>
                <li><a href="bonjour" class="btn btn-primary">Bonjour</a></li>
            </ul>
        </div>
    </div>
</div>


</body>
</html>