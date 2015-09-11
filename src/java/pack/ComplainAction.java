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
public class ComplainAction extends org.apache.struts.action.Action {

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
        Complain cm=(Complain)form;
        String subject=cm.getSubject();
        String Des=cm.getDe();
        HttpSession session=request.getSession(false);
        String User_id=(String) session.getAttribute("login");
         PreparedStatement pmt=cn.prepareStatement("select role from login where login_id=?");
        pmt.setString(1,User_id);
        ResultSet rs=pmt.executeQuery();
        if(rs.next()){
             if(rs.getString("role").equalsIgnoreCase("user")){
        
        PreparedStatement pr=cn.prepareStatement("insert into complain(date,time,Complainer_id,sub,description,complainer_type) values(CURDATE(),CURTIME(),?,?,?,?)");
        pr.setString(1, User_id);
        pr.setString(2, subject);
        pr.setString(3, Des);
        pr.setString(4,"user");
        int an=pr.executeUpdate();
        if(an>0){
        
        return mapping.findForward("UserComplain1");
        }}else{
               PreparedStatement pr=cn.prepareStatement("insert into complain(date,time,Complainer_id,sub,description,complainer_type) values(CURDATE(),CURTIME(),?,?,?,?)");
        pr.setString(1, User_id);
        pr.setString(2, subject);
        pr.setString(3, Des);
        pr.setString(4,"doctor");
        int an=pr.executeUpdate();
        if(an>0){
        
        return mapping.findForward("DoctorComplain1");
        }  
                 
             }}
        return mapping.findForward(SUCCESS);
    }
}
