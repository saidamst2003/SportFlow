package com.sportFlow.servlets;

import com.sportFlow.dao.loginDAO;
import com.sportFlow.model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/login")
public class loginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String email =request.getParameter("email");
      String password =request.getParameter("password");
     System.out.println("Email: " + email);
     System.out.println("Password: " + password);

     User user = loginDAO.authenticate(email,password);

     if (user != null) {
         System.out.println("User authenticated: " + user.getFullName() + ", Role: " + user.getRole());
         // new session
         HttpSession session = request.getSession(true);
         session.setAttribute("iduSer", user.getId());
         session.setAttribute("fullName", user.getFullName());
         session.setAttribute("role", user.getRole());

         System.out.println("Session created with ID: " + session.getId());
         System.out.println("User logged in: " + user.getFullName());
         System.out.println("Role: " + user.getRole());


         if ("Coatch".equalsIgnoreCase(user.getRole())) {
             System.out.println(user.getRole());
             System.out.println("Redirection vers : CoatchDashboard");
             response.sendRedirect("CoatchDashboard.jsp");
         } else if ("Member".equalsIgnoreCase(user.getRole())) {
             System.out.println("Redirection vers : MembreDashboard");
             response.sendRedirect("MembreDashboard.jsp");
         } else {
             response.sendRedirect("errorPage.jsp");
         }

     } else {
         System.out.println("Authentication failed: User not found");
         // Authentication failed, redirect back to login page with error message
         response.sendRedirect("login.jsp?error=1");
     }
 }



 }
