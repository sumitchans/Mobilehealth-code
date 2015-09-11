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
public class AskDoctorAction extends org.apache.struts.action.Action {

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
        AskDoctor ask=(AskDoctor)form;
        HttpSession a=request.getSession(false);
        //String Doctor_id=ask.getDoctor_id();
        String Doctor_id=request.getParameter("Doctor_id");
        String desc=ask.getDesc();
        //String Doctor_id=(String)session.getAttribute("Doctor_id");
        String User_id=(String)a.getAttribute("login");
         PreparedStatement pmt=cn.prepareStatement("select role from login where login_id=?");
        pmt.setString(1,User_id);
        ResultSet rs=pmt.executeQuery();
        if(rs.next()){
            if(rs.getString("role").equalsIgnoreCase("user")){
        PreparedStatement pt=cn.prepareStatement("insert into question(question,patient_id,Doctor_id,role,date,time) values(?,?,?,?,CURDATE(),CURTIME())");
        pt.setString(1,desc);
        pt.setInt(2,Integer.parseInt(User_id));
        pt.setInt(3,Integer.parseInt(Doctor_id));
         pt.setString(4,"user");
        int an=pt.executeUpdate();
        if(an>0){return mapping.findForward("UserProfile");}}
            else{
                 PreparedStatement pt=cn.prepareStatement("insert into question(question,patient_id,Doctor_id,role,date,time) values(?,?,?,?,CURDATE(),CURTIME())");
        pt.setString(1,desc);
        pt.setInt(2,Integer.parseInt(User_id));
        pt.setInt(3,Integer.parseInt(Doctor_id));
         pt.setString(4,"doctor");
        int an=pt.executeUpdate();
        if(an>0){return mapping.findForward("DoctorProfile");}
            }
        }
        return mapping.findForward(SUCCESS);
    }
}
