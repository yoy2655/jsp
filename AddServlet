package unit01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddServlet
 */
@WebServlet("/AddServlet")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//		int n1=20;
//		int n2=10;
//		
//		int sum=n1+n2;
//		
//		PrintWriter out=response.getWriter();	//일종의 출력객체: PrintWriter->웹에 출력하겠다
//		out.print("<body>");					
//		out.print(n1+"+"+n2+"+"+sum);
//		out.print("</body>");
		
		//클라이언트에게 응답한 페이지 정보를 셋팅한다.
//		response.setContentType("text/html");
//		PrintWriter out=response.getWriter();	//일종의 출력객체: PrintWriter->웹에 출력하겠다
//		out.print("Hello Servlet");
//		out.close();
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out=response.getWriter();	//일종의 출력객체: PrintWriter->웹에 출력하겠다
		
		out.print("<h3>서블릿</h3>");					
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
