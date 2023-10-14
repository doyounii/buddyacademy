package kr.ed.haebeop.service;

import kr.ed.haebeop.domain.Course;
import kr.ed.haebeop.domain.Enroll;

import java.util.List;

public interface CourseService {
    public List<Course> getCourseList();
    public Course getCourse(int num);
    public void insertEnroll (Enroll enroll);
    public void updateStudentNum(int cno);

}
