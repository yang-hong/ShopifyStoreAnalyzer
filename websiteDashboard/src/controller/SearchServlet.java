package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Info;
import utils.ReadQuery;
import utils.SearchQuery;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/search")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		String info1 = request.getParameter("searchVal");
//		SearchQuery sq = new SearchQuery();
//		sq.doSearch(info1);
//		String table = sq.getHTMLtable();
//		
//		request.setAttribute("table", table);
//		String url = "/read.jsp";
//		
//		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
//		dispatcher.forward(request, response);
//	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String WebAddr = request.getParameter("searchVal");
		SearchQuery rq = new SearchQuery();
		rq.doSearch(WebAddr);
		List<Info> listinfo = rq.selectAllInfo();
		
		boolean emp = listinfo.isEmpty();
		if (emp == true) {
			String sampleurl = "sample.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(sampleurl);
			dispatcher.forward(request, response);
		} else {
			request.setAttribute("listInfo", listinfo);
			String url = "/SearchDashboard.jsp";
			
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		}	
		
	}
	

}
