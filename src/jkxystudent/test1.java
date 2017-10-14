package jkxystudent;

public class test1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//System.out.println("hello");
	    /*db_op w=new db_op();
	    String[] s1=new String[6];
	    s1[0]="2-02-033598-0";
	    s1[1]="jhjsa";
	    s1[2]="123";
	    s1[3]="renmin";
	    s1[4]="2015/3/1";
	    s1[5]="25";
	    w.inputNewBook(s1);*/
		book b1=new book("2-02-033598-0","jhjsa","123","renmin","2015/3/1","25");
		db_op w=new db_op();
		//System.out.println(b1.get_authorId());
		w.inputNewBook(b1);
	}

}
