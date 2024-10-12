<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <title>Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>
    <body>
        <div class="container mt-5 d-flex justify-content-center align-items-center vh-100">
            <div class="card shadow" style="width: 25rem;">
                <div class="card-body">
                    <h3 class="-r mb-4">Login</h3>
                    <% if (request.getAttribute("error")!=null) {%>
                        <div class="alert alert-danger" role="alert">
                            <strong><%= request.getAttribute("error") %></strong>
                        </div>
                    <% } %>
                    <form method="POST" action="login">
                        <div class="mb-3">
                            <label for="usuario" class="form-label" >Usuario</label>
                            <input type="text" class="form-control" id="usuario" name="usuario" required></input>
                        </div>
                        <div class="mb-3">
                            <label for="contrasena" class="form-label" >Password</label>
                            <input type="password" class="form-control" id="contrasena" name="contrasena" required></input>
                        </div>
                        <button type="submit" class="btn btn-primary w-100">Login</button>
                    </form>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>