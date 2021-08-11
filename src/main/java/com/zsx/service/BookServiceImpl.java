package com.zsx.service;

import com.zsx.dao.BookMapper;
import com.zsx.pojo.Books;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookServiceImpl implements BookService{
    //业务层调dao层：组合dao层
@Autowired
private BookMapper bookMapper;

    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    @Override
    public int addBook(Books books) {
        return bookMapper.addBook(books);
    }

    @Override
    public int deleteBookById(int id) {
        return bookMapper.deleteBookById(id);
    }

    @Override
    public int upDateBook(Books books) {
        return bookMapper.upDateBook(books);
    }

    @Override
    public List<Books> queryBooks(int id) {
        return bookMapper.queryBooks(id);
    }

    @Override
    public List<Books> queryAllBooks() {
        return bookMapper.queryAllBooks();
    }
}
