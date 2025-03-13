package com.sportFlow.dao;

import com.sportFlow.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class loginDAO {
    public static User authenticate(String email, String password){
         String query ="SELECT idUser, FullName, role FROM user WHERE email = ? AND password =?";
          User user = null;
          try{
              Connection connection = UserDAO.getConnection();
              PreparedStatement pdst = connection.prepareStatement(query);

              pdst.setString(1,email);
              pdst.setString(2,password);
              System.out.println("Executing query: " + pdst.toString()); // Log de la requête


              ResultSet rs = pdst.executeQuery();
              if(rs.next()) {
                  user = new User();
                  user.setId(rs.getInt("idUser"));
                  System.out.println("the id is = " + user.getId());
                  user.setFullName(rs.getString("FullName"));
                  user.setRole(rs.getString("role"));

              }
              } catch (SQLException e) {
                  e.printStackTrace();
              }
              System.out.println(user);
              return user;



    }

}
