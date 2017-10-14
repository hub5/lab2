package jkxystudent;
//change for git

import java.sql.*;

public class dbcon {
	public Connection getCon(){
		try{
			/*System.out.println("111111111111111111111");
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:8080/hx?useUnicode=true&characterEncoding=utf-8";
			String user="root";
			String password="123456";
			Connection conn=DriverManager.getConnection(url,user,password);
			System.out.println(conn.getMetaData().getURL());*/
			//String username="k2mmkw0xxk";
			//String password="l0ym004yy4zxzx3k43j4w201233i325130mlx5h1";
			//System.out.println(username+password+dbUrl);
			//String url="jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_hxshujuku"; 
			
			
			/*String driver = "com.mysql.jdbc.Driver";
			String username = System.getenv("ACCESSKEY");
			String password = System.getenv("SECRETKEY");
			String dbUrl = String.format("jdbc:mysql://%s:%s/%s", System.getenv("MYSQL_HOST"), System.getenv("MYSQL_PORT"), System.getenv("MYSQL_DB"));
			Class.forName(driver).newInstance();
			Connection conn = DriverManager.getConnection(dbUrl, username, password);
			System.out.println(conn.getMetaData().getURL());*/
			
			ResultSet rs = null;
		    PreparedStatement ps  = null;
		    java.sql.Connection con = null;
		    String drivername = new String("com.mysql.jdbc.Driver");
			Class.forName(drivername);
			String url = "jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_hxshujuku";
			String user = new String("k2mmkw0xxk");
			String password = new String("l0ym004yy4zxzx3k43j4w201233i325130mlx5h1");
			con = DriverManager.getConnection(url,user,password);
			System.out.println(con.getMetaData().getURL());
			return con;
			
			//return conn;
		}
		catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
}
