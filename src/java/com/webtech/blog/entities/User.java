/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webtech.blog.entities;

import java.sql.Date;
import java.sql.Timestamp;
import java.time.LocalDate;

/**
 *
 * @author MEETANSHI
 */
public class User {
    
    //variables
    private int id;
    private String name, password,email,about;
    private LocalDate date;
    private Timestamp dateTime;
    private String profile;

    
    //constructors
    public User(int id, String name, String email, LocalDate date, String password) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.email = email;
        this.date = date;
       
    }

    public User(String name, String email,LocalDate date,String password) {
        this.name = name;
        this.password = password;
        this.email = email;
      this.date=date;
       
    }

    public User() {
    }
    
    //getters and setters

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public Timestamp getDateTime() {
        return dateTime;
    }

    public void setDateTime(Timestamp dateTime) {
        this.dateTime = dateTime;
    } 

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }
    
    
}
