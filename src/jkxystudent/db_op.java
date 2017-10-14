package jkxystudent;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class db_op {
	private Connection conn=new dbcon().getCon();
	private Statement stmt;
	
	//����ͼ��
	public int inputNewBook(book b1){
		try{
			book b=b1;
			stmt = conn.createStatement(); 
			String sql= "insert into book values('"+b.get_isbn()+"','"+b.get_title()+"','"+b.get_authorId()+"','"+b.get_publisher()+"','"+b.get_publisherdata()+"','"+b.get_price()+"')";
			//String sql= "insert into book values('3','3','3','3','3','3')";
			System.out.println(sql);
			stmt.executeUpdate(sql);
			System.out.println("seccess");
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return 1;
	}
	
	//��������������ͼ��
	public ArrayList<String> SearchByAuthor(String name){
		ArrayList<String> a=new ArrayList<String>();
		try{
			stmt = conn.createStatement(); 
			String sql= "select * from book b,author a where a.authorId=b.authorId and a.name='"+name+"'";
			System.out.println(sql);
			ResultSet rs = stmt.executeQuery(sql);
			System.out.println(111);
			while(rs.next()){
				a.add((String)rs.getString(2));
			}
			return a;
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
	//����������ʾͼ����Ϣ
	public book show_book(String book_name){
		try{
			stmt = conn.createStatement(); 
			String sql= "select * from book where title='"+book_name+"'";
			System.out.println("000"+sql);
			ResultSet rs = stmt.executeQuery(sql);
			book b=new book();
			while(rs.next()){
				b.set_isbn(rs.getString(1));
				b.set_title(rs.getString(2));
				b.set_authorId(rs.getString(3));
				b.set_publisher(rs.getString(4));
				b.set_publisherdata(rs.getString(5));
				b.set_price(rs.getString(6));
			}
				return b;
		}
		catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	//����������ʾ������Ϣ
	public author show_author(String book_name){
		try{
			book b=this.show_book(book_name);
			String id=b.get_authorId();
			stmt = conn.createStatement();
			String sql= "select * from author where authorId='"+id+"'";
			ResultSet rs = stmt.executeQuery(sql);
			//if(null==rs.getString(1))return null;
			author a=new author();
			while(rs.next()){
				a.set_authorId(rs.getString(1));
				a.set_name(rs.getString(2));;
				a.set_age(rs.getString(3));
				a.set_country(rs.getString(4));	
			}
			return a;
		}
		catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

	//ɾ��ͼ��
	public void delete(String name){
		try{
			stmt = conn.createStatement(); 
			String sql= "delete from book where title='"+name+"'";
			stmt.executeUpdate(sql);
			System.out.println("yyy");
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	
	//����ͼ��
	public void update(String bisbn,String authorId,String publisher,String publisherdate,String price){
		try{
			 if(!"".equals(authorId)){
				 stmt = conn.createStatement(); 
				 String sql= "update book set authorId='"+authorId+"'"+" where isbn='"+bisbn+"'";
				 stmt.executeUpdate(sql);
			 }
			 if(!"".equals(publisher)){
				 stmt = conn.createStatement(); 
				 String sql= "update book set publisher='"+publisher+"'"+" where isbn='"+bisbn+"'";
				 stmt.executeUpdate(sql);
			 }
			 if(!"".equals(publisherdate)){
				 stmt = conn.createStatement(); 
				 String sql= "update book set publisherdata='"+publisherdate+"'"+" where isbn='"+bisbn+"'";
				 stmt.executeUpdate(sql);
			 }
			 if(!"".equals(price)){
				 stmt = conn.createStatement(); 
				 String sql= "update book set price='"+price+"'"+" where isbn='"+bisbn+"'";
				 stmt.executeUpdate(sql);
			 }
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
}
