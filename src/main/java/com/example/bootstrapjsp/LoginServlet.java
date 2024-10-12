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


}
