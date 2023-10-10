package kr.ed.haebeop.config;

import kr.ed.haebeop.repository.TestRepository;
import kr.ed.haebeop.repository.TestRepositorympl;
import kr.ed.haebeop.service.TestService;
import kr.ed.haebeop.service.TestServiceImpl;
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
}
