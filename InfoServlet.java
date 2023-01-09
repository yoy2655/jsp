package unit01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InfoServlet
 */
@WebServlet("/InfoServlet")
public class InfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		String name=request.getParameter("name");
		String addr=request.getParameter("addr");
		
		PrintWriter out=response.getWriter();
		out.print(name+"<br>");
		out.print(addr+"<br>");
		
		out.print("<a href='javascript:history.go(-1)'>다시</a>");
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		
		String name=request.getParameter("name");
		String addr=request.getParameter("addr");
		
		PrintWriter out=response.getWriter();
		out.print(name+"<br>");
		out.print(addr+"<br>");
		
		out.print("<a href='javascript:history.go(-1)'>다시</a>");
		out.close();	
	}

}
