package kr.ed.haebeop.controller;

import kr.ed.haebeop.domain.Enroll;
import kr.ed.haebeop.domain.User;
import kr.ed.haebeop.persistence.UserMapper;
import kr.ed.haebeop.service.CourseService;
import kr.ed.haebeop.service.UserService;
import org.checkerframework.checker.units.qual.A;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping("/admin/")
public class AdminController {
    @Autowired
    private UserService userService;

    @Autowired
    private CourseService courseService;

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String adminPage() throws Exception {
        return "/admin/adminPage";
    }

    @RequestMapping(value = "userList.do", method = RequestMethod.GET)
    public String userList(Model model) throws Exception {
        List<User> userList = userService.userList();
        model.addAttribute("userList", userList);
        System.out.println(userList);
        return "/admin/userList";
    }

    //관리자페이지 수강 관리
    @RequestMapping(value="enrollList", method = RequestMethod.GET)
    public String admonEnroll(Model model) {
        List<Enroll> enrollList = courseService.enrollList();
        model.addAttribute("enrollList",enrollList);
        return "/admin/adminEnroll";
    }
}
