package com.ruifu.service;

import com.ruifu.model.security.User;
import com.ruifu.repository.security.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

/**
 * Created by Administrator on 2017/3/15.
 */
@Component
public class CustomUserService implements UserDetailsService {
    @Autowired
    private UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException{
        User user = userRepository.findByUsername(username);
        if (user==null){
            throw new UsernameNotFoundException("username does not exists");
        }
        return user;
    }
}
