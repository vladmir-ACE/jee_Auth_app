package com.user.bdd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.xdevapi.PreparableStatement;
import com.user.bean.User;

public class UserData {
	
	
	Connection connexion;
	
	public void CreateUser(User user){
		
		PreparedStatement preparedstatement=null;
		connection();
		
		try {
			String Query="INSERT INTO users (nom ,prenom,email,username,password)VALUES (?, ?, ?, ?, ?)";
			preparedstatement= connexion.prepareStatement(Query);
			
			preparedstatement.setString(1, user.getNom());
			preparedstatement.setString(2, user.getPrenom());
			preparedstatement.setString(3, user.getEmail());
			preparedstatement.setString(4, user.getUsername());
			preparedstatement.setString(5, user.getPassword());

			int rowsAffected = preparedstatement.executeUpdate();

	        if (rowsAffected > 0) {
	            System.out.println("Utilisateur inséré avec succès !");
	        } else {
	            System.out.println("Échec de l'insertion de l'utilisateur.");
	        }			
			
		} catch (SQLException e) {
			
			System.out.println(e);
		}finally {
			try {
                preparedstatement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }		}		
		
	}
	
	
	public boolean LogIn(String Username, String Password) {
		
		List<User> Users=new ArrayList<User>();
		Statement statement=null;
		ResultSet resultat=null;
		connection();
		
		boolean val=false;
		
		try {
			statement = (Statement) connexion.createStatement();
			resultat=statement.executeQuery("SELECT nom ,prenom,email,username,password FROM Users;");
			
			while(resultat.next()) {
				String nom=resultat.getString("nom");
				String prenom= resultat.getString("prenom");
				String email= resultat.getString("email");
				String username= resultat.getString("username");
				String password= resultat.getString("password");
				
				User User=new User(nom, prenom,email,username,password);
				Users.add(User);
					
			}
			
			for(int i=0 ; i<Users.size(); i++) {
			
			User item=Users.get(i);
				if(item.getUsername().equals(Username) && item.getPassword().equals(Password)) {
					System.out.println("User trouver");
					val=true;
				}
				
				
			}
			
	
			
			
		} catch (SQLException e) {
			
			System.out.println(e);
			val=false;
			
		}finally {
			try {
				statement.close();
				
			} catch (SQLException e2) {
				// TODO: handle exception
			}
		}
		
		return val;
		
		
		
	}
		
	
	
	
	
	
	
	
	
	
	
private void connection() {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException  e) {
			// TODO: handle exception
		}
		
		try {
			connexion=DriverManager.getConnection("jdbc:mysql:"+"//localhost:3306/jee","root","");
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace(); 
		}		


}

}
