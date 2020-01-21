package pl.robert.allegrodemo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import pl.robert.allegrodemo.entity.User;
import pl.robert.allegrodemo.service.UserService;

import javax.servlet.http.HttpSession;

@Controller
@SessionAttributes("userSession")
public class HomeController {
    @Autowired
    UserService userService;

    @GetMapping("/")
    public String home(){
        return "LoginPage";
    }

    @PostMapping("/")
    public String loginPage(@RequestParam String username, @RequestParam String password, Model model, HttpSession session){
        User user = userService.userByEmail(username);
        model.addAttribute("isLogged", false);
        if (user == null) {
            return "LoginPage";
        }
        if (user.getPassword().equals(password)) {
            model.addAttribute("userSession",user);
            model.addAttribute("isLogged", true);
            return "redirect:/" + "Start";
        }
        return "LoginPage";
    }

}
