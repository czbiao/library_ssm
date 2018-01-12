package main.web.controller.student;

import main.constant.Constant;
import main.dao.BookStudentDao;
import main.dao.BookDao;
import main.dao.domain.Book;
import main.dao.domain.BookStudent;
import main.web.bean.PageBean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/student/borrowInfo")
public class StuBorrowInfoController {

    @Resource
    private BookStudentDao bookStudentDao;

    @Resource
    private BookDao bookDao;


    @RequestMapping(method = {RequestMethod.GET, RequestMethod.POST})
    public String index(HttpServletRequest request, ModelMap model) {
        String username = (String) request.getSession().getAttribute(Constant.user_name);
        model.addAttribute("username", username);
        return "student/borrow-info";
    }



    @ResponseBody
    @RequestMapping(value = "/list", method = {RequestMethod.GET, RequestMethod.POST})
    public PageBean<BookStudent> list(HttpServletRequest request, ModelMap model, BookStudent bookStudent) {
        Integer sid = (Integer) request.getSession().getAttribute(Constant.user_id);
        bookStudent.setSid(sid);
        List<BookStudent> bookStudents = bookStudentDao.find(bookStudent);
        PageBean<BookStudent> data = new PageBean<BookStudent>();
        data.setData(bookStudents);
        return data;
    }


    @ResponseBody
    @RequestMapping(value = "/findBook", method = {RequestMethod.GET, RequestMethod.POST})
    public Book findBook(Book book){
        return bookDao.findByBno(book);
    }
}