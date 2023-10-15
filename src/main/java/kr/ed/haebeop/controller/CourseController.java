package kr.ed.haebeop.controller;

import kr.ed.haebeop.domain.Course;
import kr.ed.haebeop.domain.Enroll;
import kr.ed.haebeop.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/course/")
public class CourseController {
    @Autowired
    private CourseService courseService;

    @Autowired
    HttpSession session;

    @GetMapping("list")
    public String getCourseList(Model model) throws Exception {
        List<Course> getCourseList = courseService.getCourseList();
        model.addAttribute("getCourseList",getCourseList);
        return "/course/courseList";
    }

    @RequestMapping(value = "getCourse", method = RequestMethod.GET)
    public String getCourse(@RequestParam int cno, Model model ) throws Exception {
        Course course = courseService.getCourse(cno);
        model.addAttribute("course", course);
        return "/course/getCourse";
    }

    @RequestMapping(value = "signIn", method = RequestMethod.GET)
    public String signInCourse(@RequestParam int cno,@RequestParam int price, Model model ) throws Exception {
        Course course = courseService.getCourse(cno);
        model.addAttribute("course", course);
        model.addAttribute("price", price);
        return "/course/signInCourse";
    }

    @RequestMapping(value="signIn", method = RequestMethod.POST)
    public String insertEnrollPro(Enroll enroll, String sid, Model model) throws Exception {
        courseService.insertEnroll(enroll);
        courseService.updateStudentNum(enroll.getCno());
        model.addAttribute("price", enroll.getCno());
        return "redirect:/";
    }

}
