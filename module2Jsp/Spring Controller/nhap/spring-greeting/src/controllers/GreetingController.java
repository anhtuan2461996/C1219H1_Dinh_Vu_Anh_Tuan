package controllers;

import org.springframework.web.bind.annotation.GetMapping;

@Contr
public class GreetingController {
    @GetMapping("/greeting")
    public String greeting(){
        return "index";
    }
}
