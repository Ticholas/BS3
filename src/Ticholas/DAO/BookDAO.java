package Ticholas.DAO;

import Ticholas.Bean.Book;
import Ticholas.Bean.BookInfo;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by HFQ on 2016/5/29.
 */
@Repository
public class BookDAO {

    @Autowired
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }


    public void createBook(Book book)
    {
        Session session = this.sessionFactory.getCurrentSession();
        session.save(book);
    }

    public List<Book> findAllBooks(){
        Session session = this.sessionFactory.getCurrentSession();
        String hql = "from Book";
        List<Book> books = session.createQuery(hql).list();
        return books;
    }

    public void removeBook(Book book){
        Session session = this.sessionFactory.getCurrentSession();
        session.delete(book);
    }

    public void updateBook(Book book){
        Session session = this.sessionFactory.getCurrentSession();
        session.update(book);
    }

    public Book findBookById(String ISBN){
        Session session = this.sessionFactory.getCurrentSession();
        Book book = null;
        book = (Book)session.get(Book.class, ISBN);
        return book;
    }

    public BookInfo getBookDetail(String ISBN){
        Session session = this.sessionFactory.getCurrentSession();
        String hql = "from BookInfo book where book.ISBN = " + ISBN;
        BookInfo detail = (BookInfo)(session.createQuery(hql).list().get(0));
        return detail;
    }

}
