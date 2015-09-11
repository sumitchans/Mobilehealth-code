/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;
import java.sql.*;
/**
 *
 * @author sumit
 */
public class connection {
    
//  public static void main(String args[]){
   static Connection con;
  public static  Connection con(){
       try{
   Class.forName("com.mysql.jdbc.Driver");
   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","loinking");
 //if(con!=null){System.out.println("ok");}
   }
       catch(Exception e){System.out.println(e);}
 return (con);
  }
}
 /*class test{
  public static void main(String args[]){
  connection.con();
  }}*/
  