package com.itgr;



import java.sql.*;



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author itgrl1
 */
public class Util 
{
    static Connection con;
    public static Connection getConnection()
    {
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
    }catch(ClassNotFoundException e)
    {
        System.out.println(e);
    }
    try
        {
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/logindata","root","");
    }catch(SQLException q)
    {
        System.out.println(q);
    }
    return con;
    }
    
}

