package kr.ed.haebeop.controller;
import kr.ed.haebeop.domain.BookBoard;
import kr.ed.haebeop.domain.BookObj;
import kr.ed.haebeop.domain.BookVO;
import kr.ed.haebeop.service.BookService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.*;

@Controller
@RequestMapping("/book/")
public class BookController {
    private static final Logger log = LoggerFactory.getLogger(FileController.class);
    @Resource(name="uploadPath")
    String uploadPath;

    @Autowired
    private BookService bookService;

    @RequestMapping(value = "bookList", method = RequestMethod.GET)
    public String bookList(Model model) throws Exception {
        List<BookVO> bookboardList = bookService.bookboardList();
        model.addAttribute("bookboardList",bookboardList);
        return "book/bookList";
    }

    @GetMapping("bookUpload")
    public String fileUploadForm(){
        return "/book/bookUpload";
    }

    @PostMapping("bookUpload")
    public String fileUpload1(MultipartHttpServletRequest files, HttpServletRequest req, Model model) throws Exception {

        //파라미터 분리
        Enumeration<String> e = files.getParameterNames();
        Map map = new HashMap();
        while (e.hasMoreElements()) {
            String name = e.nextElement();
            String value = files.getParameter(name);
            map.put(name, value);
        }

        //제목 및 내용 분리
        BookBoard board = new BookBoard();
        board.setTitle((String) map.get("title"));
        board.setContent((String) map.get("content"));

        //uploadPath; //dispatcher-servlet에서 지정한 경로
        //req.getContextPath(); //현재 프로젝트 홈 경로 - /pro3_war
        //req.getServletPath();   //요청된 URL - /pro3_war/file/fileupload1.do
        //req.getRealPath("/resources/upload")  //현재 프로젝트에 저장될 실제 경로
        String devFolder = uploadPath + "/resources/upload";    //개발자용 컴퓨터에 업로드 디렉토리 지정
        String uploadFolder = req.getRealPath("/resources/upload");
        log.info("-----------------------------------");
        log.info(" 현재 프로젝트 홈 : "+req.getContextPath());
        log.info(" dispatcher-servlet에서 지정한 경로 : "+uploadPath);
        log.info(" 요청 URL : "+req.getServletPath());
        log.info(" 프로젝트 저장 경로 : "+req.getRealPath("/resources/upload"));
        //여러 파일 반복 저장
        List<BookObj> bookList = new ArrayList<>();
        Iterator<String> it = files.getFileNames();
        while(it.hasNext()){
            String paramfName = it.next();
            MultipartFile file = files.getFile(paramfName);
            log.info("-----------------------------------");
            log.info("name : "+file.getOriginalFilename());
            log.info("size : "+file.getSize());
            log.info("path : ");

            File saveFile = new File(uploadFolder, file.getOriginalFilename()); //실제 파일 객체 생성
            //File devFile = new File(devFolder, file.getOriginalFilename()); //개발자용 컴퓨터에 해당파일 생성

            BookObj data = new BookObj();
            data.setSaveFolder(uploadFolder);
            data.setOriginFile(file.getOriginalFilename());
            data.setSaveFile(saveFile.getPath());
            data.setFileSize(file.getSize());
            Date today = new Date();
            data.setUploadDate(today.toString());
            bookList.add(data);
            try {
                file.transferTo(saveFile);  //실제 디렉토리에 해당파일 저장
                //file.transferTo(devFile); //개발자용 컴퓨터에 해당파일 저장
            } catch(IllegalStateException e1){
                log.info(e1.getMessage());
            } catch(IOException e2){
                log.info(e2.getMessage());
            }
        }

        BookVO fileboard = new BookVO();
        fileboard.setBookList(bookList);
        fileboard.setBookBoard(board);

        bookService.insertBookboard(fileboard);

        return "redirect:/book/bookUpload";
    }
}
