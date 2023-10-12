package kr.ed.haebeop.controller;

import kr.ed.haebeop.domain.Book;
import kr.ed.haebeop.domain.Course;
import kr.ed.haebeop.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/course/")
public class CourseController {
    @Autowired
    private CourseService courseService;

    @GetMapping("list")
    public String getCourseList(Model model) throws Exception {
        List<Course> getCourseList = courseService.getCourseList();
        model.addAttribute("getCourseList",getCourseList);
        return "/course/courseList";
    }

    @RequestMapping(value = "getCourse", method = RequestMethod.GET)
    public String getCourse(@RequestParam int cno, Model model ) throws Exception {
        Course course = courseService.getCourse(cno);
        Book book = courseService.getBook(cno);
        model.addAttribute("course", course);
        model.addAttribute("book", book);
        return "/course/getCourse";
    }
}
