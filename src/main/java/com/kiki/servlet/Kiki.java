package com.kiki.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.auteur.bean.Auteur;
import com.kiki.bdd.Data;

/**
 * Servlet implementation class Kiki
 */
@WebServlet("/Kiki")
public class Kiki extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Kiki() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

		Data data= new Data();

		List<Auteur> auteurs= data.recupererAuteur();
		request.setAttribute("auteurs", auteurs);
	    
		
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/kiki.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	 String nom=request.getParameter("nom");
	 request.setAttribute("nom", nom);
	 
	 String password=request.getParameter("password");
	 request.setAttribute("password", password);
	 
	 this.getServletContext().getRequestDispatcher("/WEB-INF/kiki.jsp").forward(request, response);

	
	}

}
