package kr.ed.haebeop.controller;

import kr.ed.haebeop.domain.Course;
import kr.ed.haebeop.domain.Enroll;
import kr.ed.haebeop.domain.User;
import kr.ed.haebeop.service.CourseService;
import kr.ed.haebeop.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/course/")
public class CourseController {
    @Autowired
    private CourseService courseService;

    @Autowired
    HttpSession session;

    @RequestMapping(value = "list.do", method = RequestMethod.GET)
    public String courseList(HttpServletRequest request, Model model) throws Exception {
        String type = request.getParameter("type");
        String keyword = request.getParameter("keyword");
        int curPage = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;

        Page page = new Page();
        page.setSearchType(type);
        page.setSearchKeyword(keyword);
        int total = courseService.courseCount(page);

        page.makeBlock(curPage, total);
        page.makeLastPageNum(total);
        page.makePostStart(curPage, total);

        model.addAttribute("type", type);
        model.addAttribute("keyword", keyword);
        model.addAttribute("page", page);
        model.addAttribute("curPage", curPage);

        List<Course> courseList = courseService.courseList(page);
        model.addAttribute("courseList", courseList);
        return "/course/courseList";
    }


    @RequestMapping(value = "getCourse", method = RequestMethod.GET)
    public String getCourse(@RequestParam int cno, Model model,HttpServletRequest request ) throws Exception {
        Course course = courseService.getCourse(cno);
        model.addAttribute("course", course);
        Enroll enroll = new Enroll();
        if (session.getAttribute("sid") != null) {
            String id = (String) session.getAttribute("sid");
            enroll.setId(id);
            enroll.setCno(cno);
            boolean isEnroll = false;
            if(courseService.isEnroll(enroll) != null) {
                isEnroll = true;
            }
            model.addAttribute("isEnroll", isEnroll);
        }

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
        return "redirect:/";
    }

    //회원의 수강 신청 정보 보기
    @RequestMapping(value="mypageCourse", method = RequestMethod.GET)
    public String userPageCourse(Model model, HttpServletRequest request,@RequestParam int complete) throws Exception {
        String id = (String) session.getAttribute("sid");
        Enroll enroll = new Enroll();

        if (complete == 0) {
            enroll.setId(id);
            enroll.setComplete(false);
            List<Enroll> getEnrollList = courseService.getEnrollList(enroll);
            User user = courseService.getUserName(id);
            model.addAttribute("getEnrollList", getEnrollList);
            model.addAttribute("user",user);

            int size = courseService.getEnrollList(enroll).size();
            model.addAttribute("size",size);
            enroll.setComplete(true);
            size += courseService.getEnrollList(enroll).size();

            if (size != 0) {
                int enrollNum = Math.round( 100 / size);
                model.addAttribute("enrollNum",enrollNum);
            }
            return "/course/mypageCourse";
        } else {
            enroll.setId(id);
            enroll.setComplete(true);
            List<Enroll> getEnrollList = courseService.getEnrollList(enroll);
            User user = courseService.getUserName(id);
            model.addAttribute("getEnrollList", getEnrollList);
            model.addAttribute("user",user);

            int size = courseService.getEnrollList(enroll).size();
            model.addAttribute("size",size);
            enroll.setComplete(false);
            size += courseService.getEnrollList(enroll).size();

            if (size != 0) {
                int enrollNum = Math.round( 100 / size);
                model.addAttribute("enrollNum",enrollNum);
            }
            return "/course/completedCourse";
        }

    }

    //회원의 수강완료 버튼 누르기
    @RequestMapping(value="complete", method = RequestMethod.POST)
    public String completePro(int eno) throws Exception {
        courseService.complete(eno);
        return "redirect:/course/mypageCourse?complete=0";
    }
}
