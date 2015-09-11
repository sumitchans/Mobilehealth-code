/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

import java.sql.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.catalina.Session;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author sumit
 */
public class SortAction extends org.apache.struts.action.Action {

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
        Sort1 sr=(Sort1)form;
        Connection cn=connection.con();
        String special=sr.getDropdown();
      /*  HttpSession ss=(HttpSession) request.getSession(false);
        String user_id=(String)ss.getAttribute("login");*/
        PreparedStatement pr=cn.prepareStatement("select * from doctor where specialize=?");
        pr.setString(1,special);
         ResultSet sort=pr.executeQuery();
         request.setAttribute("sort",sort);
       /* PreparedStatement pr1=cn.prepareStatement("select role from login where login_id=?");  
        pr1.setString(1,user_id);
         ResultSet so=pr1.executeQuery();
         if(so.next()){
             if(so.getString("role").equalsIgnoreCase("user")){
        return mapping.findForward("SortedDoctorList");
    }else{  return mapping.findForward("SortedDoctorList1");}
}*/return mapping.findForward("SortedDoctorList");}}
