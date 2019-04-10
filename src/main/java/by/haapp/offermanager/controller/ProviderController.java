package by.haapp.offermanager.controller;

import by.haapp.offermanager.model.Provider;
import by.haapp.offermanager.service.ProviderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProviderController {

    @Autowired
    private ProviderService providerService;
//
//    @RequestMapping(value = "/provider", method = RequestMethod.GET)
//    public ModelAndView listProvider(HttpServletRequest request, HttpServletResponse response){
//        ModelAndView modelAndView = new ModelAndView("provider");
//        modelAndView.addObject("provider", new Provider());
//        modelAndView.addObject("listProviders", this.providerService.getAllProviders());
//        return modelAndView;
//    }

    @RequestMapping(value = "/provider", method = RequestMethod.GET)
    public String listProvider(Model model){
        model.addAttribute("provider", new Provider());
        model.addAttribute("listProviders", this.providerService.getAllProviders());
        return "provider";
    }


}
