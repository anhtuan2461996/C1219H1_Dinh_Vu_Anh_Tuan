package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.Map;

@Controller
public class DictionaryController {
    @GetMapping("/")
    public String index(){
        return "index";
    }
    @GetMapping("/dictionary")
    public String index(@RequestParam("txtSearch")String keyword, Model molel){
        molel.addAttribute("keyword",keyword);
        Map<String,String> wordList = new HashMap<>();
        wordList.put("hello","xin chao");
        wordList.put("name","xin chao");
        wordList.put("what","cai gi");
        wordList.put("cat","con meo");
        wordList.put("why","tai sao");
        String value = wordList.get(keyword);
        molel.addAttribute("value",value);
        return "result";
    }
}
