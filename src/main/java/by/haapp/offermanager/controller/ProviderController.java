package by.haapp.offermanager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller(value = "/provider")
public class ProviderController {

    @RequestMapping(value = "/provider", method = RequestMethod.GET)
    public String hello(@RequestParam(value = "name", required = false, defaultValue = "world") String name, Model model){
        model.addAttribute("name", name);
        return "index";
    }

}
