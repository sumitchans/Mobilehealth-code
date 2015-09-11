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
public class UserComplainResponse extends org.apache.struts.action.Action {

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
        Connection cn=connection.con();
        HttpSession s1=request.getSession(false);
        String User_id=(String)s1.getAttribute("login");
         PreparedStatement pmt=cn.prepareStatement("select role from login where login_id=?");
       pmt.setString(1,User_id);
       ResultSet rs1=pmt.executeQuery();
       if(rs1.next()){
            if(rs1.getString("role").equalsIgnoreCase("user")){
        PreparedStatement pm=cn.prepareStatement("select *from complain where Complainer_id=? and response IS NOT NULL order by date desc");
       pm.setString(1,User_id);
       ResultSet rs=pm.executeQuery();
       request.setAttribute("rs",rs);
       return mapping.findForward("UserComplainResponse");
        }else{
PreparedStatement pm=cn.prepareStatement("select *from complain where Complainer_id=? and response IS NOT NULL order by date desc");
       pm.setString(1,User_id);
       ResultSet rs=pm.executeQuery();
       request.setAttribute("rs",rs);
        return mapping.findForward("DoctorComplainResponse");
            }}
      return mapping.findForward(SUCCESS);   } /*else{ if(rs.getString("complainer_type").equalsIgnoreCase("user"))
        {return mapping.findForward("UserNoComplain");}*/
       
    }
        
    

