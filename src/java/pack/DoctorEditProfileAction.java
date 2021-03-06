/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

import java.sql.Connection;
import java.sql.PreparedStatement;
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
public class DoctorEditProfileAction extends org.apache.struts.action.Action {

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
            throws Exception {   Connection cn=connection.con();
       DoctorEditProfile reg=(DoctorEditProfile)form;
       HttpSession ss=request.getSession(false);
       String user_id=(String)ss.getAttribute("login");
         PreparedStatement ps=cn.prepareStatement("update doctor set name=? ,password=?,address=?,mobile=?,Email_id=? where D_id=?");
        ps.setString(1,reg.getUsername());
       // ps.setString(2,reg.getFname());
        ps.setString(2,reg.getPass());
         ps.setString(3,reg.getAddress());
         // ps.setString(5,reg.getSex());
           ps.setString(4,reg.getMobile());
             ps.setString(5,reg.getEmail());
           ps.setString(6,user_id);
       int a=ps.executeUpdate();
       if(a>0){return mapping.findForward("DoctorProfile");}
        
        return mapping.findForward(SUCCESS);
    }
}
