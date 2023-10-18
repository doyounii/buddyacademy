package kr.ed.haebeop.persistence;

import kr.ed.haebeop.domain.BookVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BookMapper {
    public List<BookVO> bookboardList() throws Exception;
    public void insertBookboard(BookVO bookboard) throws Exception;
}
