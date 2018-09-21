package servlet_bean;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author a101269
 */
import java.sql.*;
import java.io.*;

public class DBBean implements Serializable 
{
    
    private String driverStr="com.mysql.jdbc.Driver";
    private String connStr= "jdbc:mysql://localhost:3306/login?characterEncoding=GBK";
    private String username="root";
    private String password="123"; 
    private Connection conn=null;
    private Statement stmt=null;
    public DBBean()
    {
        try{
                Class.forName(driverStr);
                conn = DriverManager.getConnection(connStr,username, password);
                stmt = conn.createStatement();
            }
        catch(Exception ex){System.out.println("无法同数据库建立连接！");}
    }
    public int executeUpdate(String s)
    {
        int result=0;
        try{result=stmt.executeUpdate(s);}
        catch(Exception ex){System.out.println("执行更新错误！");}
        return result;
     }
    public ResultSet executeQuery(String s)
    {
        ResultSet rs=null;
        try{rs=stmt.executeQuery(s);}
        catch(Exception ex){System.out.println("执行查询错误！");}
        return rs;
    }
    public void close()
    {
        try{
                stmt.close();
                conn.close();
            }
        catch(Exception e){}
    }
}
