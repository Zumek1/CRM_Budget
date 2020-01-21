package pl.robert.allegrodemo.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.robert.allegrodemo.entity.User;

import java.util.List;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByEmail(String email);
    @Query(value = "select * from user where region =?1 AND role =?2", nativeQuery = true)
    List<User> findByRegion(String region, String role);
}
