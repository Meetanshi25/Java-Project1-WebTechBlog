/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webtech.blog.helper;
import java.sql.*;

/**
 *
 * @author MEETANSHI
 */
public class ConnectionProvider {
    
    private static Connection con;

    public static Connection getConnection() {
        
        try{
            
                if(con==null)
                {
                     //load driver class
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            //create a connection
              con= DriverManager.getConnection("jdbc:mysql://localhost:3306/webtechblog","root","root");
              
                } 
            
         }
          catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return con;
    }

    
    
    
}
