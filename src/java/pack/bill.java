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
public class bill extends org.apache.struts.action.Action {

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
       HttpSession session=request.getSession(false);
       String User_id=(String)session.getAttribute("login");
        PreparedStatement pmt=cn.prepareStatement("SELECT  prescription.medicine_name,medicine.mfd_date,medicine.expiry_date,medicine.rate FROM prescription,medicine where patient_id=? and medicine.medicine_name=prescription.medicine_name");
pmt.setString(1,User_id);
ResultSet rs1=pmt.executeQuery();
 request.setAttribute("Result1",rs1);
        return mapping.findForward("Userbill");
    }
}
