package kr.ed.haebeop.service;

import kr.ed.haebeop.persistence.FilePerisistence;
import kr.ed.haebeop.domain.FileDTO;
import kr.ed.haebeop.domain.FileVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FileServiceImpl implements FileService {

    @Autowired
    private FilePerisistence filePerisistence;

    @Override
    public void insertFileboard(FileVO fileboard) throws Exception {
        filePerisistence.insertFileboard(fileboard);
    }

    @Override
    public List<FileVO> getFileList() throws Exception {
        return filePerisistence.getFileList();
    }

    @Override
    public List<FileDTO> getFileGroupList(int postNo) throws Exception {
        return filePerisistence.getFileGroupList(postNo);
    }

    @Override
    public FileVO getFilebord(int postNo) throws Exception {
        return filePerisistence.getFilebord(postNo);
    }

    @Override
    public FileVO getFileObject(int no) throws Exception {
        return null;
    }

    @Override
    public void removeFileboard(int postNo) throws Exception {
        filePerisistence.removeFileboard(postNo);
    }

    @Override
    public void fileRemove(int no) throws Exception {
        filePerisistence.fileRemove(no);
    }

    @Override
    public FileDTO getFile(int no) throws Exception {
        return filePerisistence.getFile(no);
    }
}