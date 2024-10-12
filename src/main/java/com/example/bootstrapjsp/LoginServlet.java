package com.example.bootstrapjsp;

import java.io.IOException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    //Credenciales predeterminados
    private static final String USER="admin";
    private static final String PASS="admin";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String usuario = request.getParameter("usuario");
        String contrasena = request.getParameter("contrasena");

        if(USER.equals(usuario) && PASS.equals(contrasena)){
            //Credenciales correctas
            HttpSession session = request.getSession();
            session.setAttribute("usuario", usuario);
            response.sendRedirect("todo.jsp");
        } else {
            //Credenciales Incorrectas
            request.setAttribute("error","Usuario o Contraseña Incorrectos");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }



    }

}
