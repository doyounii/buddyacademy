package kr.ed.haebeop.service;

import kr.ed.haebeop.domain.Test;
import org.springframework.stereotype.Service;

import java.util.List;

public interface TestService {
    public List<Test> getTestList();
    public List<Test> getTestList2();
    public List<Test> getTestList3();
    public Test getTest(int num);
    public void insert(Test test);
    public void update(Test test);
    public void delete(int num);
}
