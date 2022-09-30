package myPackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.StringTokenizer;

public class SelectDB {
	String sql="";
	String month="";
	String ack="";
	
	String selectDB(String _str) {
		
		StringTokenizer stk = new StringTokenizer(_str, "//");
		
		String citytag = stk.nextToken();
		String monthtag = stk.nextToken();
		
		month = "m"+monthtag;
		
	
		
		sql = "select province, city, name, "+ month +" from korea where city = \"" + citytag+"\" order by "+ month +" desc";
		

		Connection con = null;
		Statement stmt = null;
		String url ="jdbc:mysql://localhost:3306/ver1?useSSL=false&serverTimezone=Asia/Seoul";
		String user = "root";
		String passwd = "1234";
		
		try {//try1
			Class.forName("com.mysql.cj.jdbc.Driver");
		}catch(java.lang.ClassNotFoundException e) {
			System.out.println("Server > SelectDB> try1");
			System.err.print("ClassNotFoundException: "); 
			System.err.println("드라이버 로딩 오류: " + e.getMessage());
		}
		
		try {//DB에 user테이블로 부터 정보를 읽어옴
			con = DriverManager.getConnection(url,user,passwd);
			stmt = con.createStatement();
			
			
			ResultSet result = stmt.executeQuery(sql); //user테이블에서 가지고
			
			
			ack="";
			while(result.next()) { //DB에 저장된 정보들을 한줄씩 가지고 옴
				String province = result.getString("province");
				String city = result.getString("city");
				String name = result.getString("name");
				int people = result.getInt(month);
				
				ack += province+","+city+","+name+","+people+"//";
				System.out.println(ack);

			}
			
			
			
			
		}catch(SQLException ex){
			System.out.println("stsClient > selectDB > makelist");
		}finally {
    		try {
			if (stmt != null) stmt.close();
            		if (con != null) con.close();
           	} catch (Exception e) {
           			System.out.println(e);
           	}
       	}
		System.out.println("selectDB : " + ack);
		return ack;
		
		
	}

}
