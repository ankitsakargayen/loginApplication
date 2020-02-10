package com.itgr;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author itgrl1
 */
public class person {



    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    int id;
    String name,pwd;

    public String getCy() {
        return cy;
    }

    public void setCy(String cy) {
        this.cy = cy;
    }
            
    String cy;
}
