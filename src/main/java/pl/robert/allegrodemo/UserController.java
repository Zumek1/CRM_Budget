package pl.robert.allegrodemo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import pl.robert.allegrodemo.entity.Costs;
import pl.robert.allegrodemo.entity.User;
import pl.robert.allegrodemo.service.CostsService;
import pl.robert.allegrodemo.service.UserService;

import javax.servlet.http.HttpSession;
import java.math.BigDecimal;

@Controller
@SessionAttributes("userSession")
public class UserController {
    @Autowired
    UserService userService;
    @Autowired
    CostsService costsService;

    @GetMapping("/Start")
    public String startPage(Model model, HttpSession session) {
        User userFromSession = (User) session.getAttribute("userSession");
        model.addAttribute("user", userFromSession);
        return "Start";
    }

    @GetMapping("/Budzet")
    public String budgetPage(Model model, HttpSession session) {
        User userFromSession = (User) session.getAttribute("userSession");
        model.addAttribute("user", userFromSession);
        model.addAttribute("costs", new Costs());
        return "Budzet";
    }

    @PostMapping("/Budzet")
    public String newCost(@ModelAttribute Costs costs, BindingResult result, Model model, HttpSession session) {
        if (result.hasErrors()) {
            model.addAttribute("costs", new Costs());
            return "Budzet";
        }
        User user= (User) session.getAttribute("userSession");
        BigDecimal temp = user.getBudget().subtract(costs.getTotalAmount());
        user.setBudget(temp);
        costs.setUser(user);
        costsService.updateCosts(costs);
        userService.updateUser(user);

        return "redirect:Budzet";

    }

    @GetMapping("/CostList")
    public String listOfCosts(Model model, HttpSession session){
        return "CostList";
    }
}
