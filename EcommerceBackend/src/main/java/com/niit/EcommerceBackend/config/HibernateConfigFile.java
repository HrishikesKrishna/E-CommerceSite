package com.niit.EcommerceBackend.config;


import java.util.Properties;
import javax.sql.DataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import com.niit.EcommerceBackend.models.Product;
import com.niit.EcommerceBackend.models.Supplier;
import com.niit.EcommerceBackend.models.User;
import com.niit.EcommerceBackend.models.Cart;
import com.niit.EcommerceBackend.models.Category;
import com.niit.EcommerceBackend.models.Order;

	@Configuration
	@ComponentScan("com.niit.EcommerceBackend")
	@EnableTransactionManagement
	public class HibernateConfigFile 
	{
		
		    @Autowired
		    @Bean(name="dataSource")
		    public SessionFactory sessionFactory(DataSource dataSource) {
		        LocalSessionFactoryBuilder sessionBuilder  = new LocalSessionFactoryBuilder(dataSource);
		        /*sessionBuilder.setProperty("hibernate.show_sql", "true");*/
		        
		        sessionBuilder.addProperties(getHibernateProperties());
		        sessionBuilder.addAnnotatedClass(Product.class);
		        sessionBuilder.addAnnotatedClass(Supplier.class);
		        sessionBuilder.addAnnotatedClass(Category.class);
		        sessionBuilder.addAnnotatedClass(User.class);
		        sessionBuilder.addAnnotatedClass(Supplier.class);
		        sessionBuilder.addAnnotatedClass(Cart.class);
		        sessionBuilder.addAnnotatedClass(Order.class);
		        
		       
		        
		        return sessionBuilder.buildSessionFactory();
		    }
		    
		    @Autowired
		    @Bean(name = "datasource")
		    public DataSource dataSource() {
		        DriverManagerDataSource dataSource = new DriverManagerDataSource();
		        dataSource.setDriverClassName("org.h2.Driver");
		        dataSource.setUrl("jdbc:h2:tcp://localhost/~/ecomdb");
		        dataSource.setUsername("sa");
		        dataSource.setPassword("");
		        System.out.println("DB success");
		        return dataSource;
		    }

		    private Properties getHibernateProperties() {
		        Properties properties = new Properties();
		        properties.put("hibernate.show_sql", "true");
		        properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		        properties.put("hibernate.format_sql", "true");
		        properties.put("hibernate.hbm2ddl.auto", "update");
		        properties.put("hibernate.connection.autocommit", true);
		        return properties;
		    }
		    @Bean
			@Autowired
		        public HibernateTransactionManager txManager(SessionFactory sessionFactory) {
		                return new HibernateTransactionManager(sessionFactory);
		        }

		    
}
