package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Email;
import utils.SaveEmailQuery;

/**
 * Servlet implementation class EmailServlet
 */
@WebServlet("/register")
public class EmailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private SaveEmailQuery emails;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		register(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
    private void register(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String emailAddr = request.getParameter("email");

        Email email = new Email();
        email.setEmail(emailAddr);
        SaveEmailQuery seq = new SaveEmailQuery();
        try {
			seq.saveEmail(email);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

//        try {
//            int result = emails.saveEmail(email);
//            if (result == 1) {
//                request.setAttribute("NOTIFICATION", "User Registered Successfully!");
//            }
//
//        } catch (Exception e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        }
        
        String url = "/search.jsp";

        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }

}
