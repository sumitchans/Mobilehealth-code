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
public class AppointmentConfirmAction extends org.apache.struts.action.Action {

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
            throws Exception { Connection cn=connection.con();
        AppointmentComfirm ac=(AppointmentComfirm)form;
        String time=ac.getTime();
         HttpSession an=request.getSession(false);
         String Doctor_id=(String)an.getAttribute("login");
        String User_id=request.getParameter("patient_id");
        String date=request.getParameter("date");
        PreparedStatement tr=cn.prepareStatement("Update appointment set response_time=? where patient_id=? and DateANDTime=? and Doctor_id=?");
        tr.setString(1,time);
          tr.setString(2,User_id);
          tr.setString(3,date);
             tr.setString(4,Doctor_id);
          int a=tr.executeUpdate();
         if(a>0){ /*PreparedStatement trp=cn.prepareStatement("select response_time from appointment where patient_id=? and DateANDTime=? and Doctor_id=?");
            trp.setString(1,User_id);
          trp.setString(2,date);
             trp.setString(3,Doctor_id);
             ResultSet rms=trp.executeQuery();
             if(rms.next()){
                 request.setAttribute("time",rms.getString("response_time"));
          */
         return mapping.findForward("lid");}
       
     return mapping.findForward(SUCCESS);
}}
