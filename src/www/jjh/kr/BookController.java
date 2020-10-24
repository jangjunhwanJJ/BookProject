package www.jjh.kr;

import java.util.ArrayList;
import java.util.List;

public class BookController {
	public List<Book> selectBooks(){
		List<Book> books = new ArrayList<Book>();
		
		Book book0 = new Book();
		book0.setTitle("해리포터");
		book0.setWriter("조앤 롤링");
		book0.setImage0("https://kids.donga.com/www/data/news/201604/20160422_01_01.jpg");
		books.add(book0);
		
		Book book1 = new Book();
		book1.setTitle("반지의 제왕");
		book1.setWriter("톨킨");
		book1.setImage0("https://image.yes24.com/momo/TopCate0001/kepub/X_29957.jpg");
		books.add(book1);
		
			
		return books;	
	}; 
}
