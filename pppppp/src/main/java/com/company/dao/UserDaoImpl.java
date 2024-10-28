package com.company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.company.Util.DBUtil;

public class UserDaoImpl implements UserDao {
	 @Override
	    public boolean addUser(User user) {
	        String query = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";

	        try (Connection connection = DBUtil.getConnection();
	             PreparedStatement preparedStatement = connection.prepareStatement(query)) {

	            preparedStatement.setString(1, user.getUsername());
	            preparedStatement.setString(2, user.getEmail());
	            preparedStatement.setString(3, user.getPassword());

	            int rowsAffected = preparedStatement.executeUpdate();
	            System.out.println("Successfully insert");

	            return rowsAffected > 0;
	        } catch (SQLException e) {
	            e.printStackTrace();
	            return false;
	        }
	    }

	    @Override
	    public boolean isValidUser(String username, String password) {
	        String query = "SELECT * FROM users WHERE username = ? AND password = ?";
	    	 try (Connection connection = DBUtil.getConnection();
	             PreparedStatement preparedStatement = connection.prepareStatement(query)) {

	            preparedStatement.setString(1, username);
	            preparedStatement.setString(2, password);

	            ResultSet resultSet = preparedStatement.executeQuery();

	            return resultSet.next();
	        } catch (SQLException e) {
	            e.printStackTrace();
	            return false;
	        }
	    }
	   
		@Override
		public boolean addProduct(product products) {
		    String query = "INSERT INTO products (weight, price, name, contact,material) VALUES (?, ?, ?, ?,?)";
		    try (Connection connection = DBUtil.getConnection();
		         PreparedStatement preparedStatement = connection.prepareStatement(query)) {

		        preparedStatement.setString(1, products.getWeight());
		        preparedStatement.setString(2, products.getPrice());
		        preparedStatement.setString(3, products.getName());
		        preparedStatement.setString(4, products.getContact());
		        preparedStatement.setString(5, products.getMaterial());

		        int rowsAffected = preparedStatement.executeUpdate();
		        System.out.println("Done");

		        return rowsAffected > 0; // Return true if insertion was successful

		    } catch (SQLException e) {
		        e.printStackTrace();
		    }
		    return false;
		    // Return false if insertion failed
		}

		
		
		@Override
		public boolean addCon(contact con) {
			String query = "INSERT INTO contact (name , mail ,massage ) VALUES (?, ?, ?)";
		    try (Connection connection = DBUtil.getConnection();
		         PreparedStatement preparedStatement = connection.prepareStatement(query)) {

		        preparedStatement.setString(1, con.getName());
		        preparedStatement.setString(2,con.getMail());
		        preparedStatement.setString(3, con.getMassage());
		      

		        int rowsAffected = preparedStatement.executeUpdate();
		        System.out.println("Done massage succesufuuly addad");

		        return rowsAffected > 0; // Return true if insertion was successful

		    } catch (SQLException e) {
		        e.printStackTrace();
		    }
		    return false;
		    // Return false if insertion failed
		}

		//@Override
//		public boolean forget(forgetpass fu) {
//			 String query = "update users set pass = ? where id =?";
//	    	 try (Connection connection = DBUtil.getConnection();
//	             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
//
//	            preparedStatement.setString(1, );
//	            preparedStatement.setString(2, password);
//
//	            ResultSet resultSet = preparedStatement.executeQuery();
//
//	            return resultSet.next();
//	        } catch (SQLException e) {
//	            e.printStackTrace();
//	            return false;
//	        }
//			
//			return false;
		}
		

		
			
		 
	    

