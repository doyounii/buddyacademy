package kr.ed.haebeop.persistence;

import kr.ed.haebeop.domain.Book;
import kr.ed.haebeop.domain.Course;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CourseMapper {
    public List<Course> getCourseList();
    public Course getCourse(int num);
    public Book getBook(int cno);
}
