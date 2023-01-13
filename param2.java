package unit01;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class param
 */
@WebServlet("/param")
public class param2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public param2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("text/html;charset=TUF-8");
		
		PrintWriter out=response.getWriter();
		
		out.write("ID : "+request.getParameter("id")+"<br>");
		out.write(request.getParameter("age")+"세 입니다!");

		//
		String id = "system";
		String pw = "1234";
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";

		String id2 = request.getParameter("id");
		int age = Integer.parseInt(request.getParameter("age"));

		try {
		Class.forName("oracle.jdbc.driver.OracleDriver");

		Connection conn = DriverManager.getConnection(url, id, pw);
		String query = "insert into param (id, age) VALUES (?, ?)";

		PreparedStatement pstmt = conn.prepareStatement(query);

		pstmt.setString(1, id2);
		pstmt.setInt(2, age);

		pstmt.executeUpdate();

		out.print("오라클 완료되었다");


		conn.close();
		} catch (Exception e) {
		e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
