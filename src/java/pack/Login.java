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
public class Login extends org.apache.struts.action.ActionForm {
    
private String user;
private String pass;
private String yes;

    /**
     * @return the user
     */
    public String getUser() {
        return user;
    }

    /**
     * @param user the user to set
     */
    public void setUser(String user) {
        this.user = user;
    }

    /**
     * @return the pass
     */
    public String getPass() {
        return pass;
    }

    /**
     * @param pass the pass to set
     */
    public void setPass(String pass) {
        this.pass = pass;
    }

    /**
     * @return the message
     */

    /**
     * @param message the message to set
     */
    

    /**
     * @return the yes
     */
    public String getYes() {
        return yes;
    }

    /**
     * @param yes the yes to set
     */
    public void setYes(String yes) {
        this.yes = yes;
    }
}
