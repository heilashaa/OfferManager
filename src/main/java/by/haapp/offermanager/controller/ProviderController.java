package by.haapp.offermanager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller(value = "/provider")
public class ProviderController {

    @RequestMapping(value = "/provider", method = RequestMethod.GET)
    public String index(){
        return "provider";
    }
}
