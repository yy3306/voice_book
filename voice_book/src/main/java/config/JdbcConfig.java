package config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.jdbc.core.JdbcTemplate;


import com.alibaba.druid.pool.DruidDataSource;

/**
 * jdbc配置
 * @author 14134
 *
 */
@Configuration
@PropertySource("classpath:jdbc.properties")
public class JdbcConfig {
	@Value("${jdbc.driver}")
	private String driver;
	@Value("${jdbc.url}")
	private String url;
	@Value("${jdbc.user}")
	private String user;
	@Value("${jdbc.pwd}")
	private String password;
	
	/**
	 * Bean注解 该注解只能写在方法上
	 * @return
	 */
	@Bean(name="dataSource")
	public DataSource createDataSource(){
		DruidDataSource datasource = new DruidDataSource();
		datasource.setDriverClassName(driver);
		datasource.setUrl(url);
		datasource.setUsername(user);
		datasource.setPassword(password);
		return datasource;
	}
	@Bean(name="jdbcTemplate")
	public JdbcTemplate createJdbcTemplate(DataSource dataSource){
		return new JdbcTemplate(dataSource);
	}
	
}
