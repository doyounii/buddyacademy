package kr.ed.haebeop.service;

import kr.ed.haebeop.domain.Book;
import kr.ed.haebeop.domain.Course;
import kr.ed.haebeop.persistence.CourseMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CourseServiceImpl implements CourseService{
    @Autowired
    private CourseMapper courseMapper;

    @Override
    public List<Course> getCourseList() {
        return courseMapper.getCourseList();
    }

    @Override
    public Course getCourse(int num) {
        return courseMapper.getCourse(num);
    }

    @Override
    public Book getBook(int cno) {
        return courseMapper.getBook(cno);
    }
}