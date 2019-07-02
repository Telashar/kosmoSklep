package com.sda.kosmetykiLol.kosmoSklep.Repositories;

import com.sda.kosmetykiLol.kosmoSklep.Entities.Users.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User,Long> {
}
