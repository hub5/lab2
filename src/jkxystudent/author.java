package jkxystudent;

public class author {
	private String authorId,name,age,country;
	
	public author(String authorId,String name,String age,String country){
		this.authorId=authorId;this.name=name;this.age=age;this.country=country;
	}
	
	public author(){
		
	}
	
	public String get_authorId(){
		return authorId;
	}
	public void set_authorId(String authorId){
		this.authorId=authorId;
	}
	public String get_name(){
		return name;
	}
	public void set_name(String name){
		this.name=name;
	}
	public String get_age(){
		return age;
	}
	public void set_age(String age){
		this.age=age;
	}
	public String get_country(){
		return country;
	}
	public void set_country(String country){
		this.country=country;
	}
}
