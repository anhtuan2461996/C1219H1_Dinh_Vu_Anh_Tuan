package controllers;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
public class SandwichController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String showSanwichCondiments() {
        return "index";
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String sandwich(@RequestParam("condiment") String[] condimentsArr, Model model) {
        model.addAttribute("mesage", "Your condiments");
        model.addAttribute("condimentsArr", condimentsArr);
        return "save";
    }
}
