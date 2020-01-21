package pl.robert.allegrodemo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.SessionAttributes;
import pl.robert.allegrodemo.entity.User;
import pl.robert.allegrodemo.repo.UserRepo;

import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.util.List;

@Service
@Transactional
@SessionAttributes
public class UserService {
    @Autowired
    UserRepo userRepo;

    public void updateUser(User user){userRepo.save(user);}

    public BigDecimal rkpBudget (String region, String role, HttpSession session){
        User rkp = (User)session.getAttribute("userSession");
        region = rkp.getRegion();
        role = rkp.getRole();
        List<User> users = userRepo.findByRegion(region, role);
        BigDecimal budzetRkp = BigDecimal.valueOf(0);
        for(int i=0;i<users.size();i++){
            budzetRkp.add(users.get(i).getBudget());
        }
        return budzetRkp;
    }

    public User  userByEmail (String email){
        User user = userRepo.findByEmail(email);
        return user;
    }
}
