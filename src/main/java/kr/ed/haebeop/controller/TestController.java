package kr.ed.haebeop.controller;

import kr.ed.haebeop.domain.Test;
import kr.ed.haebeop.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/test/")
public class TestController {
    @Autowired
    private TestService testService;

    @GetMapping("getTestList")
    public String getTestList(Model model) throws Exception {
        List<Test> getTestList = testService.getTestList();
        model.addAttribute("getTestList", getTestList);
        return "/test/getTestList";
    }

    @GetMapping("getTestList2")
    public String getTestList2(Model model) throws Exception {
        List<Test> getTestList2 = testService.getTestList2();
        model.addAttribute("getTestList", getTestList2);
        return "/test/getTestList";
    }

    @GetMapping("getTestList3")
    public String getTestList3(Model model) throws Exception {
        List<Test> getTestList3 = testService.getTestList3();
        model.addAttribute("getTestList", getTestList3);
        return "/test/getTestList";
    }

    @GetMapping("testInsert")
    public String testInsert(Model model) throws Exception {
        return "/test/testInsert";
    }

    @PostMapping("testInsert")
    @ResponseBody
    public Test testInsertPro(@ModelAttribute Test test) throws Exception{
        testService.insert(test);
        return test;
    }
}
