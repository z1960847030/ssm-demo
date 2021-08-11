package com.zsx.service;

import com.zsx.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookService {
    //增加一本书
    int addBook(Books books);

    //删除一本书
    int deleteBookById(int id);

    //更新一本书
    int upDateBook(Books books);

    //查询
    List<Books> queryBooks(int id);

    //查询所有书
    List<Books> queryAllBooks();
}
