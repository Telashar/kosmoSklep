package com.sda.kosmetykiLol.kosmoSklep.Repositories;

import com.sda.kosmetykiLol.kosmoSklep.Entities.Users.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface UserRepository extends JpaRepository<User,Long> {


    void deleteById(Integer id);

    List<User> findAllByLastNameContaining(String lastName);


    Optional<User> findById(Integer id);
}
