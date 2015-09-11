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
public class sortAppointmentInformationAction extends org.apache.struts.action.Action {

    /*
     * forward name="success" path=""
     */
    private static final String SUCCESS = "success";

    /**
     * This is the action called from the Struts framework.
     *
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
        sortAppointmentInformation sp=(sortAppointmentInformation)form;
        Connection cn=connection.con();
         String date=sp.getDropdown();
        PreparedStatement pr=cn.prepareStatement("SELECT * FROM appointment where DateANDTime=? order by response_time");
        pr.setString(1,date);
         ResultSet sort=pr.executeQuery();
         request.setAttribute("sort",sort);
        
        
        return mapping.findForward("SortAppointmentInformation");
        
        
        //return mapping.findForward(SUCCESS);
    }
}
