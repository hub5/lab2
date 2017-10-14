package jkxystudent;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class delete{
      //private String name;

   public String execute() throws Exception {
	  HttpServletRequest request = ServletActionContext.getRequest();
	  //get the input information
	  String name = request.getParameter("bname"); 
	  
	  new db_op().delete(name);
	  
	  return "success";
   }
}

