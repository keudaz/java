package vehicleRental.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vehicleRental.model.Accidents;

/**
 * Servlet implementation class accident_update_one
 */
public class accident_update_one extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public accident_update_one() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Accidents acc = new Accidents();
		
		String accId = request.getParameter("uId");
		String accDate = request.getParameter("uDate");
		String accVNum = request.getParameter("uVNum");
		String accAmount = request.getParameter("uAmount");
		
		acc.setId(Integer.parseInt(accId));
		acc.setDate(request.getParameter(accDate));
		acc.setvNum(request.getParameter(accVNum));
		acc.setAmount(request.getParameter(accAmount));
		
		request.setAttribute("accId", accId);
		request.setAttribute("accDate", accDate);
		request.setAttribute("accVNum", accVNum);
		request.setAttribute("accAmount", accAmount);
		
		System.out.println(accId+": acc_up_one: "+request.getAttribute("accId"));
		System.out.println(accDate+": acc_up_one: "+request.getAttribute("accDate"));
		System.out.println(accVNum+": acc_up_one: "+request.getAttribute("accVNum"));
		System.out.println(accAmount+": acc_up_one: "+request.getAttribute("accAmount"));
		System.out.println("");
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/accidentDetailsUpdateDelete.jsp");
		dispatcher.forward(request, response);
		
	}

}
