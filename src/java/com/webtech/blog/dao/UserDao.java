/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webtech.blog.dao;

import com.webtech.blog.entities.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;

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
            
            String query="insert into user(name,email,dob,password,about) values (?,?,?,?,?)";
            PreparedStatement st1=this.con.prepareStatement(query);
            
            st1.setString(1,user.getName());
            st1.setString(2,user.getEmail());
            st1.setObject(3, user.getDate());
            st1.setString(4,user.getPassword());
            
           
            st1.setString(5,user.getAbout());
            
            st1. executeUpdate();
            f=true;
                
            
        }catch(Exception ex)
        {
            ex.printStackTrace();
        }
        return f;
    }
    
    //get user by email and password
    
    public User getUserByEmailAndPassword(String email,String password)
    {
        User user=null;
        
        try {
            
            String query="select * from user where email=? and password=?";
            
            PreparedStatement st=con.prepareStatement(query);
            
            st.setString(1, email);
            st.setString(2, password);
           ResultSet rs= st.executeQuery();
           
           if(rs.next())
                   {
                       user=new User();
                       String name=rs.getString("name");
                       user.setName(name);
                       user.setId(rs.getInt("id"));
                       user.setEmail(rs.getString("email"));
                       user.setPassword(rs.getString("password"));
                       if(rs.getString("about")==null)
                       {
                           user.setAbout("hi, i am a learner");
                       }
                       else
                       {
                           user.setAbout(rs.getString("about"));
                       }
                       
                       user.setDate(rs.getObject("dob",LocalDate.class));
                       user.setDateTime(rs.getTimestamp("registerdate"));
                       user.setProfile(rs.getString("profile"));
                   }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return user;
    }
    
    
    
    public boolean updateUser(User user) {

        boolean f = false;
        try {
            
            

            String query = "update user set name=? , email=? , password=?, dob=? , profile=?,about=?  where  id =?";
            PreparedStatement p = con.prepareStatement(query);
            p.setString(1, user.getName());
            p.setString(2, user.getEmail());
            p.setString(3, user.getPassword());
            p.setObject(4, user.getDate());
            p.setString(5, user.getProfile());
            p.setString(6, user.getAbout());
            p.setInt(7, user.getId());
      
            
            p.executeUpdate();
           
            f = true;
            

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
    
    
    //used in displaying blogs
    public User getUserByUserId(int userId) {
        User user = null;
        try {
            String q = "select * from user where id=?";
            PreparedStatement ps = this.con.prepareStatement(q);
            ps.setInt(1, userId);
            ResultSet set = ps.executeQuery();
            if (set.next()) {
                user = new User();

//             data from db
                String name = set.getString("name");
//             set to user object
                user.setName(name);

                user.setId(set.getInt("id"));
                       user.setEmail(set.getString("email"));
                       user.setPassword(set.getString("password"));
                       if(set.getString("about")==null)
                       {
                           user.setAbout("hi, i am a learner");
                       }
                       else
                       {
                           user.setAbout(set.getString("about"));
                       }
                       
                       user.setDate(set.getObject("dob",LocalDate.class));
                       user.setDateTime(set.getTimestamp("registerdate"));
                       user.setProfile(set.getString("profile"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }
    
}
