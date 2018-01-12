package main.dao;


import main.dao.domain.BookStudent;

import java.util.List;

public interface BookStudentDao {

    boolean save(BookStudent bean);

    boolean delete(BookStudent bean);

    List<BookStudent> find(BookStudent bean);
}
