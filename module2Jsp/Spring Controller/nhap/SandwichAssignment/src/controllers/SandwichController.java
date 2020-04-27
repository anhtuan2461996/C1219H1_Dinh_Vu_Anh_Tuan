package controllers;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.swing.*;
//bó tay ^^
//tôi làm theo gradle
//thế tạo lại contrller khác thử ??
//@tạo laại project
public class SandwichController {
    @GetMapping("/choice")
    public String choice(){
        return "index";
    }
    @PostMapping("/save")
    public String select(@RequestParam("condiment") String[] condiment, Model model){

        return "submit";
    }
}
