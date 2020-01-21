package pl.robert.allegrodemo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.SessionAttributes;
import pl.robert.allegrodemo.entity.Costs;
import pl.robert.allegrodemo.repo.CostsRepo;
import pl.robert.allegrodemo.repo.UserRepo;

import java.util.List;

@Service
@Transactional
@SessionAttributes
public class CostsService {
    @Autowired
    CostsRepo costsRepo;
    @Autowired
    UserRepo userRepo;

    public void updateCosts(Costs costs){costsRepo.save(costs);}

    public List<Costs> costsByUser(Long id){
        List<Costs> costsList = costsRepo.findAllByUserID(id);
        return costsList;
    }


}
