package org.example.service;

import org.example.domaine.User;
import org.example.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    public User saveUser(User user){
        return userRepository.save(user);
    }

    public List<User> findAllUsers(){
        return userRepository.findAll();
    }

    public boolean deleteUser(Long id){
        userRepository.deleteById(id);
        return true;
    }

    public User updateUser(User user){
        return userRepository.save(user);
    }
}
