package com.ruifu.repository.security;

import com.ruifu.model.security.User;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by Administrator on 2017/3/15.
 */
@Configuration
public interface UserRepository extends CrudRepository<User,Long>{
    User findByUsername(String username);
}
