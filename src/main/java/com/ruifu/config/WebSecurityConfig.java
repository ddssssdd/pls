package com.ruifu.config;

import com.ruifu.service.CustomUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
/**
 * Created by Administrator on 2017/3/15.
 */
@Configuration
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
    @Override
    protected void configure(HttpSecurity http) throws Exception{
        http.authorizeRequests()
                .antMatchers("/dist/**","/bootstrap/**","/plugins/**").permitAll()
        //        .antMatchers("/","home").permitAll()
                .anyRequest().authenticated()
                .and()
                .formLogin()
                .loginPage("/login")
                .defaultSuccessUrl("/").failureUrl("/login?error").permitAll()
                .and().rememberMe().tokenValiditySeconds(60*60*60*24*7).key("com.ruifu.pls")
                .and()
                .logout()
                .logoutUrl("/logout")
                .logoutSuccessUrl("/login")
                .permitAll();
    }
    @Autowired
    private CustomUserService userService;
    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception{
        auth.userDetailsService(userService);
    }
}
