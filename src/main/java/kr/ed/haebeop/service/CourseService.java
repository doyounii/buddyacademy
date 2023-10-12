package kr.ed.haebeop.service;

import kr.ed.haebeop.domain.Course;
import kr.ed.haebeop.domain.Book;

import java.util.List;

public interface CourseService {
    public List<Course> getCourseList();
    public Course getCourse(int num);
    public Book getBook (int cno);

}
