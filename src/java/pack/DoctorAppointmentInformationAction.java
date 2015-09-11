/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import sun.misc.Request;

/**
 *
 * @author sumit
 */
public class DoctorAppointmentInformationAction extends org.apache.struts.action.Action {

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
   HttpSession a=request.getSession(false);
   String User_id=(String)a.getAttribute("login");
   PreparedStatement pt=cn.prepareStatement("select * from appointment where Doctor_id=?  order by DateANDTime");
   pt.setString(1,User_id);
   ResultSet rps=pt.executeQuery();

   request.setAttribute("Result",rps); 

return mapping.findForward("dai");
  
   
        //return mapping.findForward(SUCCESS);
    }
}
