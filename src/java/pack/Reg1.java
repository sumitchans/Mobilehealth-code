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
public class Reg1 extends org.apache.struts.action.Action {

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
        Reg reg=(Reg)form;
         PreparedStatement ps=cn.prepareStatement("insert into patient(name,fname,password,address,sex,mobile,email_id) values(?,?,?,?,?,?,?)");
        ps.setString(1,reg.getUsername());
        ps.setString(2,reg.getFname());
        ps.setString(3,reg.getPass());
         ps.setString(4,reg.getAddress());
          ps.setString(5,reg.getSex());
           ps.setString(6,reg.getMobile());
            ps.setString(7,reg.getEmail());
       int a=ps.executeUpdate();
       
       if(a!=0){
          PreparedStatement pr=cn.prepareStatement("select *from patient where mobile=?");
          pr.setString(1,reg.getMobile());
         ResultSet rs= pr.executeQuery();
         if(rs.next()){
              HttpSession ap=request.getSession(true);
               ap.setAttribute("login",rs.getString("p_id"));
         request.setAttribute("username",rs.getString("name"));
         request.setAttribute("fname", rs.getString("fname"));
         request.setAttribute("pid",rs.getString("p_id"));
         request.setAttribute("address",rs.getString("address"));
         request.setAttribute("mobile",rs.getString("mobile"));
         String login=rs.getString("p_id");
         String pass=rs.getString("password");
         PreparedStatement pt=cn.prepareStatement("insert into login values(?,?,?)");
         pt.setString(1,login);
         pt.setString(2,pass);
         pt.setString(3,"user");
         pt.executeUpdate();
        }
        return mapping.findForward("rs");
       }
       return mapping.findForward(SUCCESS);
}}
