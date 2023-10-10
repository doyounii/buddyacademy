package kr.ed.haebeop.config;

import org.apache.commons.dbcp.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

//applicationContext.xml을 대신하는 RootConfig.java : kr.ed.haebeop.config
//빈을 설정하는 파일로 외부 자원과 연동하는 부분을 설정
@Configuration
@ComponentScan(basePackages = {"kr.ed.haebeop.service", "kr.ed.haebeop.repository"})
@MapperScan( basePackages = {"kr.ed.haebeop.persistence"}) //MyBatis-Spring
public class RootConfig {
    @Autowired
    private ApplicationContext applicationContext;

    @Bean
    public SqlSessionTemplate sqlSessionTemplate() throws Exception {
        return new SqlSessionTemplate((SqlSessionFactory) sqlSessionFactoryBean());
    }

    //sql을 대신할 my-batis 설정 : mybatis-spring-1.3.2.jar의 세션팩토리빈클래스 연결
    @Bean
    public SqlSessionFactory sqlSessionFactoryBean() throws Exception {
        SqlSessionFactoryBean sqlSessionFactory = new SqlSessionFactoryBean();
        sqlSessionFactory.setConfigLocation(applicationContext.getResource("classpath:/mybatis-config.xml"));
        sqlSessionFactory.setMapperLocations(applicationContext.getResources("classpath*:/mappers/**/*Mapper.xml"));
        sqlSessionFactory.setDataSource(dataSource());
        return (SqlSessionFactory) sqlSessionFactory.getObject();
    }

    //트랜잭션 설정
    @Bean
    public DataSourceTransactionManager transactionManager() {
        DataSourceTransactionManager transaction = new DataSourceTransactionManager();
        transaction.setDataSource(dataSource());
        return transaction;
    }

    //spring-jdbc-5.3.20.jar 안의 드라이버매니저 연결
    @Bean
    public BasicDataSource dataSource() { //데이터 베이스 설정
        BasicDataSource basicDataSource = new BasicDataSource();
        basicDataSource.setDriverClassName("org.mariadb.jdbc.Driver");
        basicDataSource.setUrl("jdbc:mariadb://localhost:3306/haebeop");
        basicDataSource.setUsername("root");
        basicDataSource.setPassword("1234");
        return basicDataSource;
    }
    @Bean
    public CommonsMultipartResolver multipartResolver() { //멀티파트 파일 업로드 설정
        CommonsMultipartResolver commonsMultipartResolver = new CommonsMultipartResolver();
        commonsMultipartResolver.setMaxInMemorySize(100000000);
        commonsMultipartResolver.setMaxUploadSize(100000000);
        return commonsMultipartResolver;
    }
}