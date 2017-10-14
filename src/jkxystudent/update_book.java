package jkxystudent;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class update_book{
      //private String name;

   public String execute() throws Exception {
	  HttpServletRequest request = ServletActionContext.getRequest();
	  //get the input information
	  String bisbn = request.getParameter("bisbn");
	  new db_op().update(bisbn,request.getParameter("AuthorID"),
			  request.getParameter("Publisher"),request.getParameter("PublishDate"),
			  request.getParameter("Price"));
	  return "success";
   }
}

