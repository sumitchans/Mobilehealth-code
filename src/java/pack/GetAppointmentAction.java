/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

import java.sql.*;
import java.text.SimpleDateFormat;
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
public class GetAppointmentAction extends org.apache.struts.action.Action {

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
        GetAppointment gt=(GetAppointment)form;
        Connection cn=connection.con();
       // String Doctor_id=gt.getDoctor_id();
        String Doctor_id=request.getParameter("Doctor_id");
       // String dt=gt.getDt();
         String drt=gt.getDate();
        String desc=gt.getDesc();
        HttpSession a=request.getSession(false);
        String User_id=(String)a.getAttribute("login");
       // SimpleDateFormat dateFormat = new SimpleDateFormat("dd/mm/yyyy"); 
//    Date convertedDate = (Date) dateFormat.parse(drt); 
        //String Doctor_id=(String)request.getAttribute("Doctor_id");
        PreparedStatement pt=cn.prepareStatement("insert into appointment(description,patient_id,Doctor_id,DateANDTime) values(?,?,?,?) ");
          pt.setString(1, desc);
         
           pt.setInt(2,Integer.parseInt(User_id));
         pt.setInt(3,Integer.parseInt(Doctor_id));
          //pt.setDate(4,(Date) dateFormat.parse(DateAndTime));
           pt.setString(4, drt);
           // pt.setDate(4,convertedDate);
           int an=pt.executeUpdate();
           if(an>0){
                /*PreparedStatement ptr=cn.prepareStatement(" update appointment set DateANDTime=STR_TO_DATE(?,'%d/%m/%y') where Doctor_id=?");
       ptr.setString(1,DateAndTime);
        ptr.setInt(2,Integer.parseInt(Doctor_id));
       
       int ap=ptr.executeUpdate();*/
                request.setAttribute("desc",drt);
        return mapping.findForward("UserProfile");
           }else{return mapping.findForward("getAppoint");}
    }
    }

