package kr.ed.haebeop.service;

import kr.ed.haebeop.persistence.TestMapper;

import kr.ed.haebeop.domain.Test;
import kr.ed.haebeop.persistence.TestMapper2;
import kr.ed.haebeop.repository.TestRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TestServiceImpl implements TestService{
    @Autowired
    private TestRepository testRepository;
    @Autowired
    private TestMapper testMapper;
    @Autowired
    private TestMapper2 testMapper2;

    @Override
    public List<Test> getTestList(){
        return testRepository.getTestList();
    }

    @Override
    public List<Test> getTestList2() {
        return testMapper.getTestList2();
    }

    @Override
    public List<Test> getTestList3() {
        return testMapper2.getTestList3();
    }

    @Override
    public Test getTest(int num) {
        return testRepository.getTest(num);
    }

    @Override
    public void insert(Test test) {
        testRepository.insert(test);
    }

    @Override
    public void update(Test test) {
        testRepository.update(test);
    }

    @Override
    public void delete(int num) {
        testRepository.delete(num);
    }
}
