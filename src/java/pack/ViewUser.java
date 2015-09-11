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
public class ViewUser extends org.apache.struts.action.Action {

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
        
        Connection con=connection.con();
            PreparedStatement pt=con.prepareStatement("select *from patient where p_id=?");
            pt.setString(1,request.getParameter("user_id"));
ResultSet rs=pt.executeQuery();
            if(rs.next()){
            request.setAttribute("name",rs.getString("name"));
            request.setAttribute("fname",rs.getString("fname"));
            request.setAttribute("mobile",rs.getString("mobile"));
            request.setAttribute("address",rs.getString("address"));
            request.setAttribute("p_id",rs.getString("p_id"));
            request.setAttribute("sex",rs.getString("sex"));
            request.setAttribute("email",rs.getString("email_id"));
         return mapping.findForward("vv");    }
        return mapping.findForward(SUCCESS);
    }
}
