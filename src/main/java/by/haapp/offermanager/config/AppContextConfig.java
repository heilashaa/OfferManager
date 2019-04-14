package by.haapp.offermanager.config;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

@Configuration
@Import({WebMvcConfig.class, PersistenceConfig.class})
@ComponentScan(basePackages = "by.haapp.offermanager")
public class AppContextConfig {

    @Bean
    public TilesViewResolver getViewResolver(){
        return new TilesViewResolver();
    }

    @Bean
    public TilesConfigurer getTilesConfigurer(){
        TilesConfigurer tilesConfigurer = new TilesConfigurer();
        tilesConfigurer.setDefinitions("/views/jsp/tiles.xml");
        return tilesConfigurer;
    }

    @Bean
    public MessageSource messageSource(){
        ResourceBundleMessageSource messageSource = new ResourceBundleMessageSource();
        messageSource.setBasename("messages");
        return messageSource;
    }


}