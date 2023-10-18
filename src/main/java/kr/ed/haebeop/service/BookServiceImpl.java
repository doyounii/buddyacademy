package kr.ed.haebeop.service;

import kr.ed.haebeop.domain.BookVO;
import kr.ed.haebeop.persistence.BookMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookServiceImpl implements BookService{
    @Autowired
    private BookMapper bookMapper;
    @Override
    public List<BookVO> bookboardList() throws Exception {
        return bookMapper.bookboardList();
    }

    @Override
    public void insertBookboard(BookVO bookboard) throws Exception {
        bookMapper.insertBookboard(bookboard);
    }
}
