/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

import java.sql.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
public class viewUserResponse extends org.apache.struts.action.Action {

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
        Connection cn=connection.con();
        HttpSession s1=(HttpSession)request.getSession(false);
        String User_id=(String)s1.getAttribute("login");
        String date=request.getParameter("date");
        String rs_date=request.getParameter("rs_date");
         PreparedStatement pm=cn.prepareStatement("delete from complain where Complainer_id=? and date=? and response_date=?");
       pm.setString(1,User_id);
          pm.setString(2,date);
             pm.setString(3,rs_date);
      int a=pm.executeUpdate();
      if(a>0){
                  return mapping.findForward("UserComplainResponse");
    }return mapping.findForward(SUCCESS);}
}
