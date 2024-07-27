package com.klef.ep.service;

import com.klef.ep.models.User;

public interface UserService 
{
   public String registrationUser(User user);
   
   public  User checkUserLogin(String username,String password,String repassword);
   
}
