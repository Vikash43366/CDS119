package com.company.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.dao.User;
import com.company.dao.UserDao;
import com.company.dao.UserDaoImpl;
import com.company.dao.product;

/**
 * Servlet implementation class productServlet
 */
@WebServlet("/productServlet")
public class productServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static UserDao userdao=new UserDaoImpl();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public productServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String weight = request.getParameter("weight");
	        String Price = request.getParameter("price");
	        String name = request.getParameter("name");
	        String contact=request.getParameter("contact");
	        String material=request.getParameter("material");

	       product pr=new product();
	       pr.setWeight(weight);
	       pr.setPrice(Price);
	       pr.setName(name);
	       pr.setContact(contact);
	       pr.setMaterial(material);  
	       
	        
	        if (userdao.addProduct(pr)) {
	        	 System.out.println("Product data insert successfully");
	        	 response.sendRedirect("index1.jsp");
	        } else {
	        	 System.out.println("Product data not insert successfully");
	        }

//	        //UserDao userDao = new UserDaoImpl();
//	        if (userdao.addProduct(pr)) {
//	            response.sendRedirect("index1.jsp");
//	        } else {
//	            response.sendRedirect("index.jsp?error=1");
//	        }
		
		
		
		
	}

}
