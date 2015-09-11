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
public class ViewComplain extends org.apache.struts.action.Action {

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
        String User_id=request.getParameter("User_id");
        String date=request.getParameter("date");
     
           
         PreparedStatement pt=cn.prepareStatement("select role from login where login_id=?");
       pt.setString(1,User_id);
        ResultSet rs=pt.executeQuery();
       if(rs.next()){
           
           if(rs.getString("role").equalsIgnoreCase("user")){
      PreparedStatement  prt=cn.prepareStatement("select  *from patient where p_id=?");
       prt.setString(1,User_id);
      ResultSet   rps=prt.executeQuery();
         if(rps.next()){ request.setAttribute("User_name", rps.getString("name"));
        request.setAttribute("User_id", User_id);}
         
      }else{
               if(rs.getString("role").equalsIgnoreCase("doctor")){
     PreparedStatement   prt=cn.prepareStatement("select  *from doctor where D_id=?");
       prt.setString(1,User_id);
       ResultSet rps=prt.executeQuery();
          if(rps.next()){ request.setAttribute("User_name", rps.getString("name"));
        request.setAttribute("User_id", User_id);}}}
       PreparedStatement pmt=cn.prepareStatement("select date ,description,sub from complain where Complainer_id=? and date=?");
       pmt.setString(1,User_id);
        pmt.setString(2,date);
         ResultSet   rms=pmt.executeQuery();
         if(rms.next()){
           // request.setAttribute("User_name", rps.getString("name"));
        request.setAttribute("User_id", User_id);
         request.setAttribute("date", rms.getString("date"));
          request.setAttribute("desc", rms.getString("description"));
           request.setAttribute("subject", rms.getString("sub"));
             return mapping.findForward("Response");
       }}
           
        return mapping.findForward(SUCCESS);
    }
}
