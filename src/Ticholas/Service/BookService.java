package Ticholas.Service;

import Ticholas.Bean.Book;
import Ticholas.Bean.BookInfo;
import Ticholas.DAO.BookDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by HFQ on 2016/6/4.
 */
@Service
@Transactional
public class BookService {

    @Autowired
    private BookDAO bookDAO;

    public void createBook(Book book){
        bookDAO.createBook(book);
    }

    public List<Book> findAllBooks(){
        return bookDAO.findAllBooks();
    }

    public void removeBook(Book book){
        bookDAO.removeBook(book);
    }

    public void updateBook(Book book){
        bookDAO.updateBook(book);
    }

    public Book findBookById(String ISBN){
        return bookDAO.findBookById(ISBN);
    }

    public BookInfo getBookDetail(String ISBN){
        return bookDAO.getBookDetail(ISBN);
    }


}

