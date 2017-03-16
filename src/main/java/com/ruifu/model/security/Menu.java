package com.ruifu.model.security;

import javax.persistence.*;
import java.util.List;

/**
 * Created by stevenfu on 07/03/2017.
 */
@Entity
public class Menu {
    @javax.persistence.Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer Id;
    private String Name;
    private String Description;
    private String Url;
    private String Icon;


    public Integer getId() {
        return Id;
    }

    public void setId(Integer id) {
        Id = id;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }

    public String getUrl() {
        return Url;
    }

    public void setUrl(String url) {
        Url = url;
    }

    public String getIcon() {
        return Icon;
    }

    public void setIcon(String icon) {
        Icon = icon;
    }


    @OneToMany(fetch= FetchType.EAGER,cascade = CascadeType.PERSIST)
    @JoinColumn(name="parent_id")
    private List<Menu> subMenus;



    public List<Menu> getSubMenus() {
        return subMenus;
    }

    public void setSubMenus(List<Menu> subMenus) {
        this.subMenus = subMenus;
    }
}
