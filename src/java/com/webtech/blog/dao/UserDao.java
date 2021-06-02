/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webtech.blog.dao;

import com.webtech.blog.entities.User;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author MEETANSHI
 */
public class UserDao {
    
    private Connection con;

    public UserDao(Connection con) {
        this.con=con;
    }
    
    //method to insert user to database
    
    public boolean saveUser(User user)
    {
        
        boolean f=false;
        //user----->database
        
        try{
            
            String query="insert into user(name,email,dob,password) values (?,?,?,?)";
            PreparedStatement st1=this.con.prepareStatement(query);
            
            st1.setString(1,user.getName());
            st1.setString(2,user.getEmail());
            st1.setObject(3, user.getDate());
            st1.setString(4,user.getPassword());
            
            st1. executeUpdate();
            f=true;
                
            
        }catch(Exception ex)
        {
            ex.printStackTrace();
        }
        return f;
    }
    
}
