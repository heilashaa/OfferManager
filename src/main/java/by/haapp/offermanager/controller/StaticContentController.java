package by.haapp.offermanager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller(value = "/description")
public class StaticContentController {

    @RequestMapping(value = "/description", method = RequestMethod.GET)
    public String index(){
        return "description";
    }

}
