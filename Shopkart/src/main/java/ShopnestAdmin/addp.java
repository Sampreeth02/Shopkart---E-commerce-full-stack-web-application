package ShopnestAdmin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbHandler.DataInjector;

/**

 */
@WebServlet("/addp")
public class addp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		int pid=Integer.parseInt(req.getParameter("product-id"));
		String pname=req.getParameter("product-name");
		String pdes=req.getParameter("product-description");
		int pprice=Integer.parseInt(req.getParameter("product-price"));
		String pimg=req.getParameter("product-image");
		
		
		DataInjector.addProduct(pid, pname, pdes, pprice, pimg);
		
	}

}
