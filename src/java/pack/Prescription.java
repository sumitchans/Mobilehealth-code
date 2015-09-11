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
public class Prescription extends org.apache.struts.action.Action {

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
        PreparedStatement pmt=cn.prepareStatement("SELECT  prescription.medicine_name, prescription.time_of_taking,prescription.treatment_area,medicine.mfd_date,medicine.expiry_date,medicine.rate,medicine.weight,medicine.stock FROM prescription,medicine where patient_id=? and medicine.medicine_name=prescription.medicine_name");
pmt.setString(1,User_id);
ResultSet rs1=pmt.executeQuery();

    PreparedStatement pqt=cn.prepareStatement("SELECT  prescription.medicine_name, prescription.time_of_taking,prescription.treatment_area FROM prescription where patient_id=? and medicine_name not in (select  medicine.medicine_name from medicine)");
pqt.setString(1,User_id);
ResultSet rs2=pqt.executeQuery();
request.setAttribute("Result1",rs1);
request.setAttribute("Result2",rs2);
        return mapping.findForward("UserPrescription");
       
    }
}
