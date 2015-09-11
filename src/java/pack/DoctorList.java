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
public class DoctorList extends org.apache.struts.action.Action {

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
    HttpSession    session=request.getSession(false);
    String User_id=(String)session.getAttribute("login");
    if(User_id!=null){
    PreparedStatement pmt=con.prepareStatement("select role from login where login_id=?");
    pmt.setString(1,User_id);
ResultSet rs=pmt.executeQuery(); 
if(rs.next()){
if(rs.getString("role").equalsIgnoreCase("admin")){    

            PreparedStatement pt=con.prepareStatement("select *from doctor INNER JOIN login on doctor.D_id=login.login_id");
ResultSet rms=pt.executeQuery();
request.setAttribute("rms",rms);
return mapping.findForward("AdminDoctorList");
    }else {if(rs.getString("role").equalsIgnoreCase("user")){    

            PreparedStatement pt=con.prepareStatement("select *from doctor INNER JOIN login on doctor.D_id=login.login_id");
ResultSet rms=pt.executeQuery();
request.setAttribute("rms",rms);
return mapping.findForward("UserDoctorList");
}else{        PreparedStatement pt=con.prepareStatement("select *from doctor INNER JOIN login on doctor.D_id=login.login_id");
ResultSet rms=pt.executeQuery();
request.setAttribute("rms",rms);
return mapping.findForward("DoctorDoctorList");}
}}}else{
    PreparedStatement pt=con.prepareStatement("select *from doctor INNER JOIN login on doctor.D_id=login.login_id");
ResultSet rms=pt.executeQuery();
request.setAttribute("rms",rms);
return mapping.findForward("Doctor1DoctorList");
    
    }

return mapping.findForward(SUCCESS);
    }}