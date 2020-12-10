package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CalculateController {
    @GetMapping
    public String home(){
        return "home";
    }
    @PostMapping("/calculate")
    public String calculate(@RequestParam("firstNumber") double a, @RequestParam("secondNumber") double b,@RequestParam("dau") int c, Model model){
        double result = 0;
        switch (c){
            case 1:
                result = a+b;
                break;
            case 2:
                result = a-b;
                break;
            case 3:
                result = a*b;
                break;
            case 4:
                if(b==0){
                    model.addAttribute("message","khong the chia cho 0");
                    return "home";
                }
                result = a/b;
                break;
        }
        model.addAttribute("result",result);
        return "home";
    }
}
