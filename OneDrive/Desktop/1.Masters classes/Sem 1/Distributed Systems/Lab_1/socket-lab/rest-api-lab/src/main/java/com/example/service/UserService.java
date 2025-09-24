package com.example.service;

import com.example.model.User;

import java.util.ArrayList;
import java.util.List;

public class UserService {

    List<User> userList = new ArrayList<>();

    //TODO
    public List<User> getAllUsers(){
        return userList;
    }

    //TODO
    public User getUserById(String id){
        User myUser = new User();
        return myUser;
    }

    //TODO
    public User createUser(User user) {
        return user;
    }

    //TODO
    public User updateUser(String id, User user) {
        return user;
    }

    //TODO
    public void deleteUser(String id) {

    }
}
