package com.zsx.controller;

import com.zsx.pojo.Books;
import com.zsx.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;


@Controller
@RequestMapping("/book")
public class BookController {
//    Controller调service层
    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;
    //    查询全部书籍
    @RequestMapping("/allBook")
    public String list( Model model){
        List<Books> list = bookService.queryAllBooks();
        model.addAttribute("list",list);
        return "allBook";
    }

    @GetMapping("/toAddPaper")
    public String toAddPaper(){
        return "addBookpage";
    }

    @GetMapping("/addBook")
    public String addBook(Books books){
        System.out.println("addBook=>"+books);
        bookService.addBook(books);
        return "redirect:/book/allBook";//重定向到我们的   @RequestMapping("/allBook") 请求
    }

    @GetMapping("/toDeletePaper")
    public String toDeletePaper(){
        return "deleteBookpage";
    }

    @GetMapping("/deleteBook")
    public String deleteBook(int id){
        System.out.println("成功删除编号为"+id+"的书籍");
        bookService.deleteBookById(id);
        return "redirect:/book/allBook";
    }

    @GetMapping("/toUpdateBook")
    public String toUpdateBook(){
        return "updateBookpage";
    }

    @GetMapping("/updateBook")
    public String updateBook(Books books){
        System.out.println("更新了书籍=>"+ books.toString());
        bookService.upDateBook(books);
        return "redirect:/book/allBook";
    }


    @GetMapping("/toQueryBook")
    public String toQueryBook(){
        return "queryBookPage";
    }

    @GetMapping("/queryBook")
    public String queryBook(int id ,Model model){
        List<Books> books = bookService.queryBooks(id);
        model.addAttribute("boos",books);
        return "queryBook";
    }

    @RequestMapping("/menu")
    public String menu( Model model){
        List<Books> list = bookService.queryAllBooks();
        model.addAttribute("list",list);
        return "redirect:/book/allBook";
    }
}
