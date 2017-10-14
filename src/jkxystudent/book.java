package jkxystudent;

public class book {
	private String isbn,title,authorId,publisher,publisherdata,price;
	
	public book(String isbn,String title,String authorId,String publisher,String publisherdata,String price){
		this.isbn=isbn;this.title=title;this.authorId=authorId;this.publisher=publisher;this.publisherdata=publisherdata;this.price=price;
	}
	
	public book(){
		
	}
	
	public String get_isbn(){
		return isbn;
	}
	public void set_isbn(String isbn){
		this.isbn=isbn;
	}
	public String get_title(){
		return title;
	}
	public void set_title(String title){
		this.title=title;
	}
	public String get_authorId(){
		return authorId;
	}
	public void set_authorId(String authorId){
		this.authorId=authorId;
	}
	public String get_publisher(){
		return publisher;
	}
	public void set_publisher(String publisher){
		this.publisher=publisher;
	}
	public String get_publisherdata(){
		return publisherdata;
	}
	public void set_publisherdata(String publisherdata){
		this.publisherdata=publisherdata;
	}
	public String get_price(){
		return price;
	}
	public void set_price(String price){
		this.price=price;
	}
}
