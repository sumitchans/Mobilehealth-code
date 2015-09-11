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
public class ComplainResponseAction extends org.apache.struts.action.Action {

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
        ComplainResponse cr=(ComplainResponse)form;
        String resp=cr.getResponse();
      String user_id=request.getParameter("complainer_id");
      String date=request.getParameter("date");
        // String user_id=cr.getUser_id();
       // String user_id=(String)request.getAttribute("user_id");
         PreparedStatement pmt=cn.prepareStatement("update complain set response=? ,response_date=CURDATE() where Complainer_id=? and date=?");
       pmt.setString(1,resp);
       pmt.setString(2,user_id);
        pmt.setString(3,date);
    int am=pmt.executeUpdate();
    if(am>0){return mapping.findForward("complainList23");}
       return mapping.findForward(SUCCESS);
    }
}
