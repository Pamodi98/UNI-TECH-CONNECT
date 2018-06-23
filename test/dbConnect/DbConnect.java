/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dbConnect;

import java.sql.Connection;
import java.sql.DriverManager;


/**
 *
 * @author wathm
 */
public class DbConnect {  public static Connection ConnectDb(){
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/unitechconnect","root","");
           
            System.out.println("Yehhh DB Connected");
            return conn;    
        }
        catch(Exception e){
            System.out.println("error:"+e);
            return null;
            
            
        }
        
    }
    
}
