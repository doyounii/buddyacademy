package kr.ed.haebeop.config;

import kr.ed.haebeop.persistence.FilePerisistence;
import kr.ed.haebeop.persistence.FilePersistenceImpl;
import kr.ed.haebeop.persistence.UserPersistence;
import kr.ed.haebeop.persistence.UserPersistenceImpl;
import kr.ed.haebeop.repository.TestRepository;
import kr.ed.haebeop.repository.TestRepositorympl;
import kr.ed.haebeop.service.*;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

//컨트롤러나 서비스, 맵퍼,
@Configuration
@ComponentScan(basePackages = "kr.ed.haebeop")
public class ApplicationConfig {
    @Bean
    public TestRepository testRepository() {
        return new TestRepositorympl();
    }

    @Bean
    public TestService testService() {
        return new TestServiceImpl();
    }

    @Bean
    public UserPersistence userPersistence() {return new UserPersistenceImpl();}

    @Bean
    public UserService userService() {return new UserServiceImpl();}

    @Bean
    public FilePerisistence filePerisistence() {return new FilePersistenceImpl();}

    @Bean
    public FileService fileService() {return  new FileServiceImpl();}
    @Bean(name = "uploadPath")
    public String uploadPath() {
        return "D:\\doyouni\\buddybuddy\\src\\main\\webapp\\resources\\upload";
    }
}
