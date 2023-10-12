package kr.ed.haebeop.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

//dispatcher-servlet.xml을 대신하는 ServletContext.java : kr.ed.haebeop.config
@Configuration
@EnableWebMvc
@ComponentScan(basePackages = {"kr.ed.haebeop"})
public class ServletContext implements WebMvcConfigurer {
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
            registry.addResourceHandler("/ajax/**").addResourceLocations("/WEB-INF/views/ajax");
        registry.addResourceHandler("/admin/**").addResourceLocations("/WEB-INF/views/admin");
        registry.addResourceHandler("/api/**").addResourceLocations("/WEB-INF/views/api");
        registry.addResourceHandler("/board/**").addResourceLocations("/WEB-INF/views/board");
        registry.addResourceHandler("/calendar/**").addResourceLocations("/WEB-INF/views/calendar");
        registry.addResourceHandler("/chat/**").addResourceLocations("/WEB-INF/views/chat");
        registry.addResourceHandler("/check/**").addResourceLocations("/WEB-INF/views/check");
        registry.addResourceHandler("/fileupload/**").addResourceLocations("/WEB-INF/views/fileupload");
        registry.addResourceHandler("/free/**").addResourceLocations("/WEB-INF/views/free");
        registry.addResourceHandler("/guestbook/**").addResourceLocations("/WEB-INF/views/guestbook");
        registry.addResourceHandler("/include/**").addResourceLocations("/WEB-INF/views/include");
        registry.addResourceHandler("/lect/**").addResourceLocations("/WEB-INF/views/lect");
        registry.addResourceHandler("/notice/**").addResourceLocations("/WEB-INF/views/notice");
        registry.addResourceHandler("/qna/**").addResourceLocations("/WEB-INF/views/qna");
        registry.addResourceHandler("/reserve/**").addResourceLocations("/WEB-INF/views/reserve");
        registry.addResourceHandler("/test/**").addResourceLocations("/WEB-INF/views/test");
        registry.addResourceHandler("/course/**").addResourceLocations("/WEB-INF/views/course");
        registry.addResourceHandler("/user/**").addResourceLocations("/WEB-INF/views/user");
    }

    @Override
    public void configureViewResolvers(ViewResolverRegistry registry) {
        InternalResourceViewResolver bean = new InternalResourceViewResolver();
        bean.setViewClass(JstlView.class);
        bean.setPrefix("/WEB-INF/views/");
        bean.setSuffix(".jsp");
        registry.viewResolver(bean);
    }
}
