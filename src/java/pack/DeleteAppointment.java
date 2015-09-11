/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

import java.sql.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author sumit
 */
public class DeleteAppointment extends org.apache.struts.action.Action {

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
          PreparedStatement pm=cn.prepareStatement("delete from appointment  where  DateANDTime=? and patient_id= ? and  Doctor_id=?");
pm.setString(1,request.getParameter("date"));
pm.setString(2,request.getParameter("user_id"));
pm.setString(3,request.getParameter("doctor"));
int ab =pm.executeUpdate();
if(ab>0){return mapping.findForward("dxp");}  
    
     
        
        return mapping.findForward(SUCCESS);
    }
}
