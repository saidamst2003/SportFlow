package com.sportFlow.servlets;

import com.sportFlow.dao.UserDAO;
import com.sportFlow.model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet("/registration")
public class restrationServlet  extends HttpServlet {
    private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String fullName = request.getParameter("fullName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String role = request.getParameter("role");


        User user = new User(fullName, email, password, role);
        user.setFullName(fullName);
        user.setEmail(email);
        user.setPassword(password);
        user.setRole(role);


        UserDAO userDao = new UserDAO();
        int result = userDao.addUser(user);

        if (result > 0) {
            response.sendRedirect("login.jsp");
        } else {
            response.sendRedirect("registration.jsp?error=1");
        }
    }
}