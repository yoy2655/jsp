package unit01;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class EmployeeDAO {

	String id = "system";
	String pass = "221216";
	String url = "jdbc:oracle:thin:@localhost:1521/xe";

	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;

	public void getCon() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection(url, id, pass);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public Vector<EmployeeBean> selectAllEmpBean() {
		Vector<EmployeeBean> v = new Vector<>();
		try {
			getCon();

			String sql = "select * from employee";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {

				EmployeeBean bean = new EmployeeBean();
				bean.setName(rs.getString(1));
				bean.setAddress(rs.getString(2));
				bean.setSsn(rs.getString(3));
				v.add(bean);
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return v;
	}
}
