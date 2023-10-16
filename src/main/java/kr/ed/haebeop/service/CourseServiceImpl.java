package kr.ed.haebeop.service;

import kr.ed.haebeop.domain.Course;
import kr.ed.haebeop.domain.Enroll;
import kr.ed.haebeop.domain.User;
import kr.ed.haebeop.persistence.CourseMapper;
import kr.ed.haebeop.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CourseServiceImpl implements CourseService{
    @Autowired
    private CourseMapper courseMapper;

    @Override
    public List<Course> courseList(Page page) {
        return courseMapper.getCourseList(page);
    }

    @Override
    public Course getCourse(int num) {
        return courseMapper.getCourse(num);
    }

    @Override
    public void insertEnroll(Enroll enroll) {
        courseMapper.insertEnroll(enroll);
    }

    @Override
    public void updateStudentNum(int cno) {
        courseMapper.updateStudentNum(cno);
    }

    @Override
    public List<Enroll> getEnrollList(Enroll enroll) {
        return courseMapper.getEnrollList(enroll);
    }

    @Override
    public void complete(int eno) {
        courseMapper.complete(eno);
    }

    @Override
    public User getUserName(String id) {
        return courseMapper.getUserName(id);
    }

    @Override
    public Enroll isEnroll(Enroll enroll) {
        return courseMapper.isEnroll(enroll);
    }

    @Override
    public int courseCount(Page page) {
        return courseMapper.courseCount(page);
    }
}
