/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author sumit
 */
public class ComplainResponse extends org.apache.struts.action.ActionForm {
    
  private String response;

    /**
     * @return the response
     */
    public String getResponse() {
        return response;
    }

    /**
     * @param response the response to set
     */
    public void setResponse(String response) {
        this.response = response;
    }

    /**
     * @return the user_id
     
    public String getUser_id() {
        return user_id;
    }

    /**
     * @param user_id the user_id to set
     
    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }*/
}
