package kr.ed.haebeop.persistence;

import kr.ed.haebeop.domain.Course;
import kr.ed.haebeop.domain.Enroll;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CourseMapper {
    public List<Course> getCourseList();
    public Course getCourse(int num);
    public void insertEnroll(Enroll enroll);
    public void updateStudentNum(int cno);
    public List<Enroll> getEnrollList(String id);
    public void complete(int eno);
}
