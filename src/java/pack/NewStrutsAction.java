/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author sumit
 */
public class NewStrutsAction extends org.apache.struts.action.Action {

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
        
        
        String userType=request.getParameter("User");
                        String Date=request.getParameter("date");
        
        Connection cpn=connection.con();
        if(userType.equalsIgnoreCase("user")){
            
            PreparedStatement pt=cpn.prepareStatement("select * from complain where complainer_type=? and response IS  NULL order by date");
      pt.setString(1,"user");
ResultSet rs=pt.executeQuery();
request.setAttribute("Result",rs);
        }else{           PreparedStatement pt=cpn.prepareStatement("select *from complain where complainer_type=? and response IS  NULL order by date");
      pt.setString(1,"doctor");
ResultSet rs=pt.executeQuery();
request.setAttribute("Result",rs);
        
        }
        return mapping.findForward("ViewComplain1");
    }
}
