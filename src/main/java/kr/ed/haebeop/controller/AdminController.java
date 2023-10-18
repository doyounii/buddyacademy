package kr.ed.haebeop.controller;

import kr.ed.haebeop.domain.Enroll;
import kr.ed.haebeop.domain.Notice;
import kr.ed.haebeop.domain.User;
import kr.ed.haebeop.persistence.UserMapper;
import kr.ed.haebeop.service.CourseService;
import kr.ed.haebeop.service.UserService;
import kr.ed.haebeop.util.Page;
import org.checkerframework.checker.units.qual.A;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/admin/")
public class AdminController {
    @Autowired
    private UserService userService;

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

    //수강생 관리
    @Autowired
    private CourseService courseService;

    //관리자페이지 수강 관리
    @RequestMapping(value="enrollList", method = RequestMethod.GET)
    public String admonEnroll(HttpServletRequest request, Model model) {
        String type = request.getParameter("type");
        String keyword = request.getParameter("keyword");
        int curPage = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;

        Page page = new Page();
        page.setSearchType(type);
        page.setSearchKeyword(keyword);
        int total = courseService.countEnroll(page);

        page.makeBlock(curPage, total);
        page.makeLastPageNum(total);
        page.makePostStart(curPage, total);

        model.addAttribute("type", type);
        model.addAttribute("keyword", keyword);
        model.addAttribute("page", page);
        model.addAttribute("curPage", curPage);

        List<Enroll> enrollList = courseService.enrollList(page);
        model.addAttribute("enrollList", enrollList);

        return "/admin/adminEnroll";
    }
    //수강생 삭제
    @RequestMapping(value="enrollDelete", method = RequestMethod.GET)
    public String enrollDelete(@RequestParam int eno) throws Exception {
        courseService.enrollDelete(eno);
        return "redirect:/admin/enrollList";
    }
}
