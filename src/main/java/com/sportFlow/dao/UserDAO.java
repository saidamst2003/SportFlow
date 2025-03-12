package com.sportFlow.dao;

import com.sportFlow.model.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserDAO {
    private static final String URL = "jdbc:mysql://localhost:3306/SportFlow";
    private static final String USER = "root";
    private static final String PASSWORD = "0000";
    private static Connection connection;
    public UserDAO() {}
    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Chargement du driver
            connection = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Connexion réussie !");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return connection;
    }

    public int addUser(User user) {
        int result = 0;
        String SQL = "INSERT INTO users (FullName, email, password, role)VALUES (?, ?, ?, ?)";
        try {
            getConnection();
            PreparedStatement stmt = connection.prepareStatement(SQL);
            stmt.setString(1, user.getFullName());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.setString(4, user.getRole());
            result = stmt.executeUpdate();
        } catch (SQLException e) {
                e.printStackTrace();
            }
            return result;
        }
    }
    