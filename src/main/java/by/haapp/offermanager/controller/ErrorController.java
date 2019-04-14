package by.haapp.offermanager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller//todo error handler
public class ErrorController {

    @RequestMapping(value = {"/error"}, method = RequestMethod.GET)
    public String NotFoundPage() {
        return "error";
    }

}
