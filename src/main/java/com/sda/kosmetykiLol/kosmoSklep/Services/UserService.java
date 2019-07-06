package com.sda.kosmetykiLol.kosmoSklep.Services;

import com.sda.kosmetykiLol.kosmoSklep.Entities.Users.User;
import com.sda.kosmetykiLol.kosmoSklep.Repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class UserService {

    private final UserRepository userRepository;

    public void addUser(User user){userRepository.save(user);}
    public List<User> findAllUsers(){return userRepository.findAll();}

    public void deleteById(Long id) {
        userRepository.deleteById(id);
    }
    public Optional<User> getUserById(Long id) {
        return userRepository.findById(id);
    }
    public void editUser(User user) {
        userRepository.save(user);
    }
}
