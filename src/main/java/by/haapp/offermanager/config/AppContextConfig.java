package by.haapp.offermanager.config;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import javax.sql.DataSource;
import java.util.Properties;

@Configuration
@ComponentScan(basePackages = "by.haapp.offermanager")
@EnableTransactionManagement
@PropertySource("classpath:ds-hibernate-cfg.properties")
public class AppContextConfig {

    @Autowired
    private Environment environment;

    @Bean
    public InternalResourceViewResolver getViewResolver(){
        final InternalResourceViewResolver viewResolver =  new InternalResourceViewResolver();
        viewResolver.setOrder(1);
        viewResolver.setPrefix("/views/");
        viewResolver.setSuffix(".jsp");
        return viewResolver;
    }

    @Bean
    public DataSource getDataSourse(){
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName(environment.getProperty("ds.database-driver"));
        dataSource.setUrl(environment.getProperty("ds.url"));
        dataSource.setUsername(environment.getProperty("ds.username"));
        dataSource.setPassword(environment.getProperty("ds.password"));
        return dataSource;
    }

    @Autowired
    @Bean
    public SessionFactory getSessionFactory(DataSource dataSource) throws Exception {
        Properties properties = new Properties();

        properties.put("hibernate.dialect", environment.getProperty("hibernate.dialect"));
        properties.put("hibernate.show_sql", environment.getProperty("hibernate.show_sql"));
        properties.put("current_session_context_class", environment.getProperty("current_session_context_class"));

        LocalSessionFactoryBean factoryBean = new LocalSessionFactoryBean();

        factoryBean.setPackagesToScan(new String[] { "by.haapp.offermanager.model" });
        factoryBean.setDataSource(dataSource);
        factoryBean.setHibernateProperties(properties);
        factoryBean.afterPropertiesSet();

        SessionFactory sessionFactory = factoryBean.getObject();
        return sessionFactory;
    }

    @Autowired
    @Bean
    public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
        HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);

        return transactionManager;
    }


//    @Bean(name = "accountDAO")
//    public AccountDAO getApplicantDAO() {
//        return new AccountDAOImpl();
//    }
//
//    @Bean(name = "productDAO")
//    public ProductDAO getProductDAO() {
//        return new ProductDAOImpl();
//    }
//
//    @Bean(name = "orderDAO")
//    public OrderDAO getOrderDAO() {
//        return new OrderDAOImpl();
//    }
//
//    @Bean(name = "accountDAO")
//    public AccountDAO getAccountDAO()  {
//        return new AccountDAOImpl();
//    }

}