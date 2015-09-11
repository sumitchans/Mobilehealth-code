/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;
import java.sql.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import javax.servlet.http.HttpSession;

/**
 *
 * @author sumit
 */
public class LogAuth1 extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";

    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
         Login ln=(Login)form;
          Connection cn=connection.con();
          String l_id=ln.getUser();
        String password=ln.getPass(); 
        String remember=ln.getYes();
          PreparedStatement pr=cn.prepareStatement("select role from login where login_id=? and password=?");
        pr.setString(1,l_id);
        pr.setString(2,password);
        ResultSet rs=pr.executeQuery();
           if(rs.next()){
               
               HttpSession a=request.getSession(true);
              // String sessionId=a.getId();
              // request.setAttribute("s_id",sessionId);
              a.setAttribute("login",l_id);
              if(remember!=null){
              Cookie username=new Cookie("username",l_id);
              Cookie pass=new Cookie("password",password);
              response.addCookie(username);
              response.addCookie(pass);}
               if(rs.getString(1).equalsIgnoreCase("user")){   
            
        return mapping.findForward("us");
       // request.setAttribute("msg","Invalid username or password");
        }
               else{if(rs.getString(1).equalsIgnoreCase("doctor")){
                
                   return mapping.findForward("doc");}
               else{return mapping.findForward("admin");}
               }}else{return mapping.findForward("nologin");}
        //return mapping.getInputForward();}
        
    }
    }

