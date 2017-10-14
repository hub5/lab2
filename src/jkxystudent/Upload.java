package jkxystudent;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class Upload{
   //private String name;

   public String execute() throws Exception {
	   //System.out.println("ok");
	  HttpServletRequest request = ServletActionContext.getRequest();
	  //get the input information
	  String[] Infor = new String[6];
	  Infor[0] = request.getParameter("ISBN");
	  Infor[1] = request.getParameter("Title");
	  Infor[2] = request.getParameter("AuthorID");
	  Infor[3] = request.getParameter("Publisher");
	  Infor[4] = request.getParameter("PublishDate");
	  Infor[5] = request.getParameter("Price");
	  //input the book into the book database
	  book b=new book(Infor[0],Infor[1],Infor[2],Infor[3],Infor[4],Infor[5]);
	  System.out.println(b.get_authorId());
	  new db_op().inputNewBook(b);
	  return "success";
   }
}
