/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import java.sql.*;
import javax.servlet.http.HttpSession;

/**
 *
 * @author sumit
 */
public class RegComp extends org.apache.struts.action.Action {

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
        HttpSession a=request.getSession(true);
       
Connection cn=connection.con();
Reg rg=(Reg)form;
String mob=rg.getMobile();
PreparedStatement pr=cn.prepareStatement("select p_id,password from patient where mobile=?");
pr.setString(1,mob);
ResultSet rs=pr.executeQuery();
        String p_id=rs.getString("p_id");
        String pass=rs.getString("password");
        request.setAttribute("username",p_id);
        request.setAttribute("pass", pass);
        a.setAttribute("login", p_id);
        return mapping.findForward(SUCCESS);
        
    }
}
