package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DestinoDAO;
import model.Destino;

/**
 * Servlet implementation class DestinoCreateController
 */
@WebServlet("/DestinoCreateController")
public class DestinoCreateController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		Destino destino = new Destino();
		
		
		destino.setNomeDestino(req.getParameter("nome"));
		destino.setDataViagen(req.getParameter("Data"));
	
		
		
		
		
		try {
			DestinoDAO destinoDAO = new DestinoDAO();
			destinoDAO.createDestino(destino);
			
			
			res.sendRedirect("DestinoReadController");
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	

}
}
