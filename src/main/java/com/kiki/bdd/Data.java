package com.kiki.bdd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.auteur.bean.Auteur;
import java.sql.Statement;

public class Data {
	
	Connection connexion;

	public List<Auteur> recupererAuteur(){
		List<Auteur> auteurs=new ArrayList<Auteur>();
		Statement statement=null;
		ResultSet resultat=null;
		connection();
		
		try {
			statement = (Statement) connexion.createStatement();
			resultat=statement.executeQuery("SELECT nom ,prenom FROM Auteur;");
			
			while(resultat.next()) {
				String nom=resultat.getString("nom");
				String prenom= resultat.getString("prenom");
				
				Auteur auteur=new Auteur(nom, prenom);
				
				auteurs.add(auteur);
					
			}
			
			
		} catch (SQLException e) {
			
			System.out.println(e);
			return null;
		}		
			
		
		return auteurs;
				
		
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
