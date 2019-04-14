package by.haapp.offermanager.config;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.DispatcherServlet;

import javax.servlet.FilterRegistration;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

public class WebAppInitializer implements WebApplicationInitializer {

    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {

        AnnotationConfigWebApplicationContext context = new AnnotationConfigWebApplicationContext();
        context.register(AppContextConfig.class);

        ServletRegistration.Dynamic dispatcher = servletContext.addServlet("DispatcherServlet", new DispatcherServlet(context));
        dispatcher.setLoadOnStartup(1);
        dispatcher.setInitParameter("throwExceptionIfNoHandlerFound", "true");//todo error handler
        dispatcher.addMapping("/");

        FilterRegistration.Dynamic filterEncoding = servletContext.addFilter("characterEncodingFilter", CharacterEncodingFilter.class);
        filterEncoding.setInitParameter("encoding", "UTF-8");
        filterEncoding.setInitParameter("forceEncoding", "true");
        filterEncoding.addMappingForServletNames(null, true, "DispatcherServlet");

    }
}
