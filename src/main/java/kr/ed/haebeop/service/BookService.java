package kr.ed.haebeop.service;

import kr.ed.haebeop.domain.BookVO;

import java.util.List;

public interface BookService {
    public List<BookVO> bookboardList() throws Exception;
    public void insertBookboard(BookVO bookboard) throws Exception;
}
