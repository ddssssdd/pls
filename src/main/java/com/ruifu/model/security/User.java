package com.ruifu.model.security;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 * Created by Administrator on 2017/3/15.
 */
@Entity
public class User implements UserDetails{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    private String username;
    private String password;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    @ManyToMany(cascade = {CascadeType.REFRESH},fetch = FetchType.EAGER)
    private List<Role> roles;
    public List<Role> getRoles()
    {
        return roles;
    }
    public void setRoles(List<Role> roles){
        this.roles = roles;
    }
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        List<GrantedAuthority> auths = new ArrayList();
        List<Role> roles = this.getRoles();
        for(Role role:roles){
            auths.add(new SimpleGrantedAuthority(role.getName()));
        }
        return auths;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
