package com.itgr;


import com.itgr.Util;
import com.itgr.person;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


public class UserDAO {
    public boolean validateuserJDBC(String nm)
    {
        boolean result=false;
        try
        {
       Connection con=Util.getConnection();
//       Statement stmt =con.createStatement();
//       String qry = "select * from userdata where name='"+nm+"'";
String qry = "select * from userdata where name=?";
       PreparedStatement ps =con.prepareStatement(qry);
       ps.setString(1, nm);
            System.out.println("============================ "+qry);
       ResultSet rs=ps.executeQuery();
       while(rs.next())
       {
           result=true;
       }
       }catch(Exception ex)
       {
           System.out.println(ex);
       }
        return result; 
    }
   public int adduser(String id, String nm, String pwd,String cy)
    {
        boolean result=false;
        int i=0;
        try
        {
       Connection con=Util.getConnection();
       Statement stmt =con.createStatement();
      
            i =stmt.executeUpdate("INSERT INTO userdata (userid,name,password,city)\n" +
"VALUES ("+id+",'"+nm+"','"+pwd+"','"+cy+"')");
     
     
       }catch(Exception ex)
       {
           System.out.println(ex);
       }
        return i ; 
    }
   public ArrayList getUserlist()
   {
      boolean result=false;
      ArrayList personlist = new ArrayList();
      try
      {
          Connection con=Util.getConnection();
       Statement stmt =con.createStatement();
       ResultSet rs = stmt.executeQuery("select userdata.userid,userdata.name,userdata.password,citydata.cname from userdata inner join citydata on userdata.city=citydata.cityid");
         while(rs.next())
         {
             person p= new person();
             
             p.setId(rs.getInt("userid"));
             p.setName(rs.getString("name"));
             p.setPwd(rs.getString("password"));
              p.setCy(rs.getString("cname"));
             personlist.add(p);
       }
       }catch(Exception ex)
       {
           System.out.println(ex);
       }
        return personlist; 
    }
   public int Deleteuser(int id)
   {     int i=0;
       try
       {
   
        Connection con=Util.getConnection();
       Statement stmt =con.createStatement();
i= stmt.executeUpdate("delete from userdata where userid ="+id);
       }catch(SQLException e)
       {
           System.out.println(e);
       }
       return i;
   }
   
 public person getUserProfile(int id) {
        person p = new person();
        
        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = Util.getConnection();

            Statement stmt = con.createStatement();
            
           
            ResultSet rs = stmt.executeQuery("select userdata.userid,userdata.name,userdata.password,citydata.cname from userdata inner join citydata on userdata.city=citydata.cityid where userid = "+id);

            while (rs.next()) {
                p.setId(rs.getInt("userid"));
               
                p.setName(rs.getString("name"));
                p.setPwd(rs.getString("password"));
               p.setCy(rs.getString("cname"));
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return p;
    }
   
    public int updateuser(String id, String nm, String pwd)
   {     int i=0;
       try
       {
   
        Connection con=Util.getConnection();
       Statement stmt =con.createStatement();
i= stmt.executeUpdate("UPDATE userdata\n" +
"SET name='"+nm+"', password='"+pwd+"'\n" +
"WHERE userid="+id+"");
       
       }catch(SQLException e)
       {
           System.out.println(e);
       }
       return i;
   }
    public int addcity(String ci,String cn, String cs, String cc)
    {
        boolean result=false;
        int i=0;
        try
        {
       Connection con=Util.getConnection();
       Statement stmt =con.createStatement();
      
            i =stmt.executeUpdate("INSERT INTO citydata(cityid,cname,State,country)\n" +
"VALUES ('"+ci+"','"+cn+"', '"+cs+"','"+cc+"')");
            System.out.println("============================="+i);
     
     
       }catch(Exception ex)
       {
           System.out.println(ex);
       }
        return i ; 
    }
     public ArrayList getCitylist()
   {
      boolean result=false;
      ArrayList citylist = new ArrayList();
      try
      {
          Connection con=Util.getConnection();
       Statement stmt =con.createStatement();
       ResultSet rs = stmt.executeQuery("Select * from citydata");
         while(rs.next())
         {
             City p= new City();
             p.setCi(rs.getInt("cityid"));
             p.setCc(rs.getString("country"));
             p.setCs(rs.getString("state"));
             p.setCn(rs.getString("cname"));

             citylist.add(p);
       }
       }catch(Exception ex)
       {
           System.out.println(ex);
       }
        return citylist; 
    }
      public int Deletecity(int id)
   {     int i=0;
       try
       {
   
        Connection con=Util.getConnection();
       Statement stmt =con.createStatement();
i= stmt.executeUpdate("delete from citydata where cityid ="+id);
       }catch(SQLException e)
       {
           System.out.println(e);
       }
       return i;
   }
      public City getUserCity(int id) {
        City p = new City();
        
        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = Util.getConnection();

            Statement stmt = con.createStatement();
            
           
            ResultSet rs = stmt.executeQuery("select * from citydata where cityid = "+id);

            while (rs.next()) {
                p.setCi(rs.getInt("cityid"));
               
                p.setCc(rs.getString("cname"));
                p.setCs(rs.getString("State"));
                p.setCn(rs.getString("country"));
               
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return p;
    }
      public int updatecity(String ci, String cn, String cs,String cc)
   {     int i=0;
       try
       {
   
        Connection con=Util.getConnection();
       Statement stmt =con.createStatement();
i= stmt.executeUpdate("UPDATE citydata\n" +
"SET cname='"+cn+"', State='"+cs+"',country='"+cc+"'\n" +
"WHERE city="+ci+"");
       
       }catch(SQLException e)
       {
           System.out.println(e);
       }
       return i;
   }
      }
   


