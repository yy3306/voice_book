package config;

import java.nio.charset.StandardCharsets;

import javax.servlet.FilterRegistration;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.DispatcherServlet;

/**
 * 1.tomcat（web容器在启动的时候会自己找WebApplicationInitializer接口的实现类）并调用该类的方法onStartup
 * 2.构造Spring容器
 * 3.把ServletContext 交给Spring容器来管理
 * 4.在ServletContext添加了一个Servlet 这是SpringMVC的核心Servlet
 * 它也是MVC设计模式中的C，控制器
 * 以后就不写Servlet 写springmvc的controller ，写好controller SpringMVC框架就会用自己的那个核心控制器转发响应的请求
 * @author 14134
 *
 */

public class WebInitializer implements WebApplicationInitializer {

	@Override
	public void onStartup(ServletContext servletContext) throws ServletException {
		//--1.构造Spring容器
		AnnotationConfigWebApplicationContext ctx = new AnnotationConfigWebApplicationContext();
		
		//--2 spring 容器加载配置
		ctx.register(AppConfig.class);
		//3.spring容器接管ServletContext上下文对象
		ctx.setServletContext(servletContext);
		//4.添加Servlet（至少添加一个Servlet，SpringMVC框架实现的入口Servlet）
		ServletRegistration.Dynamic servlet = servletContext.addServlet("dispatcher", new DispatcherServlet(ctx));
		servlet.addMapping("/");
		servlet.setLoadOnStartup(1);
		//5.添加过滤器
		FilterRegistration.Dynamic encodingFilter = servletContext.addFilter("encodingFilter", CharacterEncodingFilter.class);
		encodingFilter.setInitParameter("encoding", String.valueOf(StandardCharsets.UTF_8));
		encodingFilter.setInitParameter("forceEncoding", "true");
		encodingFilter.addMappingForUrlPatterns(null, false, "/*");
		
	}

}
