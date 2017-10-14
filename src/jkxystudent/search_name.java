package jkxystudent;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class search_name{
      //private String name;

   public String execute() throws Exception {
	  HttpServletRequest request = ServletActionContext.getRequest();
	  //get the input information
	  request.setCharacterEncoding("UTF-8");
	  String name = request.getParameter("book_name");
	  
	  book b=new db_op().show_book(name);
	  author a=new db_op().show_author(name);
	  
	  request.setAttribute("book", b);
	  request.setAttribute("author", a);
	  request.setAttribute("age", a.get_age());
	  return "success";
   }
}
