package vehicleRental.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vehicleRental.model.Maintain;
import vehicleRental.service.MaintainService;
import vehicleRental.service.MaintainServiceImpl;

public class UpdateMaintainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateMaintainServlet() {
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
		response.setContentType("text/html");
		Maintain maintain = new Maintain();
		String manId = request.getParameter("manId");

		int id = Integer.parseInt(manId);
		maintain.setManId(id);
		
		maintain.setVno(request.getParameter("vno"));
		maintain.setDate(request.getParameter("date"));
		maintain.setDetails(request.getParameter("details"));
		maintain.setCost(Integer.parseInt(request.getParameter("cvv")));
		
		MaintainService maintainService= new MaintainServiceImpl();
		maintainService.updateMaintain(manId, maintain);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/views/listMaintain.jsp");
		dispatcher.forward(request, response);

		maintain.setManId(id);
	}

}

