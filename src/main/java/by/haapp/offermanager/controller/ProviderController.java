package by.haapp.offermanager.controller;

import by.haapp.offermanager.model.Provider;
import by.haapp.offermanager.service.ProviderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;

@Controller
public class ProviderController {

    @Autowired
    private ProviderService providerService;

    @RequestMapping(value = "/provider", method = RequestMethod.GET)
    public String listProvider(Model model){
        model.addAttribute("provider", new Provider());
        model.addAttribute("listProviders", this.providerService.getAllProviders());
        return "provider";
    }

    @RequestMapping(value = "/provider", method = RequestMethod.POST)
    public String saveProvider(@Valid Provider provider, BindingResult result, Model model, RedirectAttributes redirectAttributes){
        if(result.hasErrors()){
            model.addAttribute("listProviders", this.providerService.getAllProviders());
            return "provider";
        }
        if(provider.getId() == null){
            this.providerService.addProvider(provider);
            redirectAttributes.addFlashAttribute("report","Post added");
        }else{
            this.providerService.updateProvider(provider);
            redirectAttributes.addFlashAttribute("report","Post update");
        }
        return "redirect:/provider";
    }

    @RequestMapping(value = "/provider/delete/{id}", method = RequestMethod.GET)
    public String removeProvider(@PathVariable("id") Integer id,  RedirectAttributes redirectAttributes){
        this.providerService.removeProvider(id);
        redirectAttributes.addFlashAttribute("report","Post delete");
        return "redirect:/provider";
    }

    @RequestMapping(value = "/provider/edit/{id}", method = RequestMethod.GET)
    public String editProvider(@PathVariable("id") Integer id, Model model){
        model.addAttribute("provider", this.providerService.getProviderById(id));
        model.addAttribute("listProviders", this.providerService.getAllProviders());
        return "provider";
    }

}
