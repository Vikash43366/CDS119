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
import com.company.dao.contact;

/**
 * Servlet implementation class contactServlet
 */
@WebServlet("/contactServlet")
public class contactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static UserDao userdao=new UserDaoImpl();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public contactServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       		 String name = request.getParameter("name");
		        String mail = request.getParameter("mail");
		        String massage= request.getParameter("massage");
		     

		       contact cr=new contact();
		      cr.setMail(mail);
		      cr.setMassage(massage);
		      cr.setName(name);
		   
		        
	      if (userdao.addCon(cr)) {
		             System.out.println("Massage data send successfully");
		        	 response.sendRedirect("index1.jsp");
		        } else {
		        	 System.out.println("Massage not sent successfully");
		        }
		
		
	}

}
