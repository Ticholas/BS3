package Ticholas.Controller;

import Ticholas.Bean.Book;
import Ticholas.Bean.BookInfo;
import Ticholas.Service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by HFQ on 2016/5/29.
 */
@Controller
@RequestMapping(value = "/Book")
public class BookController {

    @Autowired
    private BookService bookService;

    @RequestMapping(value = "/create",method = RequestMethod.GET)
    public ModelAndView createBookPage(){
        ModelAndView modelAndView = new ModelAndView("View/Book/bookCreate");
        modelAndView.addObject("book",new Book());
        return modelAndView;
    }

    @RequestMapping(value = "/create",method = RequestMethod.POST)
    public ModelAndView createBook(@ModelAttribute Book book){
        ModelAndView modelAndView = new ModelAndView("redirect:/Book/list");
        bookService.createBook(book);
        List<?> books = bookService.findAllBooks();
        modelAndView.addObject("books",books);
        return modelAndView;
    }

    @RequestMapping(value = "/list",method = RequestMethod.GET)
    public ModelAndView listBook(){
        ModelAndView modelAndView = new ModelAndView("View/Book/bookList");
        List<?> booklist = bookService.findAllBooks();
        modelAndView.addObject("books",booklist);
        return modelAndView;
    }

    @RequestMapping(value = "/edit/{ISBN}",method = RequestMethod.GET)
    public ModelAndView editBookPage(@PathVariable String ISBN){
        ModelAndView modelAndView = new ModelAndView("View/Book/bookUpdate");
        Book book = bookService.findBookById(ISBN);
        modelAndView.addObject("book",book);
        return modelAndView;
    }

    @RequestMapping(value = "/edit/{ISBN}",method = RequestMethod.POST)
    public ModelAndView editBook(@ModelAttribute Book book,@PathVariable String ISBN){
        ModelAndView modelAndView = new ModelAndView("redirect:/Book/list");
        bookService.updateBook(book);
        //List<?> booklist = bookService.findAllBooks();
        //modelAndView.addObject("books",booklist);
        return modelAndView;
    }

    @RequestMapping(value = "/delete/{ISBN}",method = RequestMethod.GET)
    public ModelAndView removeBook(@PathVariable String ISBN){
        ModelAndView modelAndView = new ModelAndView("redirect:/Book/list");
        Book book = bookService.findBookById(ISBN);
        bookService.removeBook(book);
        //List<?> books = bookService.findAllBooks();
        //modelAndView.addObject("books",books);
        return modelAndView;
    }

    @RequestMapping(value = "/detail/{ISBN}",method = RequestMethod.GET)
    public ModelAndView detailBook(@PathVariable String ISBN){
        ModelAndView modelAndView = new ModelAndView("View/Book/bookDetail");
        BookInfo detail = bookService.getBookDetail(ISBN);
        modelAndView.addObject("detail",detail);
        return modelAndView;
    }




}
