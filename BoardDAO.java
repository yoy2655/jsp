package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDAO {
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;

	public void getCon() {
		try {
			Context ctx = new InitialContext();
			Context envctx = (Context) ctx.lookup("java:comp/env");
			// 데이터 소스 객체 선언
			DataSource ds = (DataSource) envctx.lookup("jdbc/pool");
			con = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void insertBoard(BoardBean bean) {
		getCon();

		int ref = 0;
		int re_step = 1;
		int re_level = 1;

		try {
			String rsql = "select max(ref) from board"; // 최신글먼저 가져오기 위한 작업
			rs = pstmt.executeQuery();

			if (rs.next()) {
				ref = rs.getInt(1) + 1;
			}
			String sql = "insert board values(bo_seq.NEXTVAL,?,?,?,?,sysdate,?,?,?,0,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getWriter());
			pstmt.setString(2, bean.getEmail());
			pstmt.setString(3, bean.getSubject());
			pstmt.setString(4, bean.getPassword());
			pstmt.setInt(5, ref);
			pstmt.setInt(6, re_step);
			pstmt.setInt(7, re_level);
			pstmt.setString(8, bean.getContent());

			pstmt.executeUpdate();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
