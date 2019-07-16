package config;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.alibaba.druid.pool.DruidDataSource;

/**
 * jdbc配置
 * @author 14134
 *
 */
@Configuration
@MapperScan("mapper")
@EnableTransactionManagement
@PropertySource({"classpath:jdbc.properties","classpath:mybatis.properties"})
public class JdbcConfig {
	@Value("${jdbc.driver}")
	private String driver;
	@Value("${jdbc.url}")
	private String url;
	@Value("${jdbc.user}")
	private String user;
	@Value("${jdbc.pwd}")
	private String password;
	
	
	//------mybatis属性
	@Value("${mybatis.mapper.xml.config.path}")
	private String mapperXMLConfigPath;
	
	@Value("${mybatis.config.path}")
	private String myBatisConfigPath;
	
	@Value("${mybatis.alias.package.path}")
	private String aliasesPackage;
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
	
	@Bean(name="SqlSessionFactory")
	public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception{
		
		SqlSessionFactoryBean sfb =
				new SqlSessionFactoryBean();
		
		//2 配置映射文件的路径
		PathMatchingResourcePatternResolver prp = 
				new PathMatchingResourcePatternResolver();
		String packageXMLConfigPath = 
				PathMatchingResourcePatternResolver.CLASSPATH_ALL_URL_PREFIX+
				mapperXMLConfigPath;
		
		//-- 设置MyBatis 配置文件的路径
		sfb.setConfigLocation(new ClassPathResource(myBatisConfigPath));
		//-- 设置mapper 对应的xml文件的路径
		sfb.setMapperLocations(prp.getResources(packageXMLConfigPath));
		//设置数据源
		sfb.setDataSource(dataSource);
		//--设置实体别名包路径
		sfb.setTypeAliasesPackage(aliasesPackage);
		
		return sfb.getObject();
	}
	
	//--事务管理器
	@Bean
	public PlatformTransactionManager platformTransactionManager(DataSource dataSource){
		return new DataSourceTransactionManager(dataSource);
	}
}
