/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

import java.sql.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author sumit
 */
public class ViewDoctor extends org.apache.struts.action.Action {

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
        HttpSession a=request.getSession(false);
      String user=(String) a.getAttribute("login");
      
         Connection con=connection.con();
            PreparedStatement pt=con.prepareStatement("select *from Doctor where D_id=?");
            pt.setString(1,request.getParameter("user_id"));
ResultSet rs=pt.executeQuery();
            if(rs.next()){
                request.setAttribute("login" ,user);
             request.setAttribute("name",rs.getString("name"));
            request.setAttribute("fname",rs.getString("fname"));
            request.setAttribute("mobile",rs.getString("mobile"));
            request.setAttribute("address",rs.getString("address"));
            request.setAttribute("D_id",rs.getString("D_id"));
            request.setAttribute("sex",rs.getString("sex"));
            request.setAttribute("email",rs.getString("email_id"));
            request.setAttribute("spe",rs.getString("specialize"));
            request.setAttribute("college",rs.getString("college"));
         if(user!=null){      
            PreparedStatement ptr=con.prepareStatement("select role from login where login_id=?");
             //PreparedStatement ptr=con.prepareStatement("select role from login where login_id=?");
   // ptr.setString(1,user);
            ptr.setString(1,user);
ResultSet rst=ptr.executeQuery();
            if(rst.next()){ if(rst.getString("role").equalsIgnoreCase("admin")){
                return mapping.findForward("vd"); } 
        
            else{ if(rst.getString("role").equalsIgnoreCase("user")){ 
         return mapping.findForward("uvd");    }
            else{ 
         return mapping.findForward("dvd");    }
            }}}else{
             return mapping.findForward("mvd");
         }}
        return mapping.findForward(SUCCESS);
    }
}
