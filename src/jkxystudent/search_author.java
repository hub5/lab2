package jkxystudent;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class search_author{
      //private String name;

   public String execute() throws Exception {
	   //System.out.println("ok");
	  HttpServletRequest request = ServletActionContext.getRequest();
	  String name = request.getParameter("author_name");
	  ArrayList<String> a = new db_op().SearchByAuthor(name);
	  
	  request.setAttribute("title_list", a);
	  request.setAttribute("is_success", "success");
	  return "success";
   }
}

