package pl.robert.allegrodemo.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.robert.allegrodemo.entity.Costs;

import java.util.List;

public interface CostsRepo extends JpaRepository<Costs, Long> {
    @Query(value = "select * from costs where user_id=?1",nativeQuery = true)
    List<Costs> findAllByUserID (Long id);
}
