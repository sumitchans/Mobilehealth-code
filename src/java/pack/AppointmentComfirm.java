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
public class AppointmentComfirm extends org.apache.struts.action.ActionForm {
    
    private String time;

    /**
   

    /**
     * @return the time
     */
    public String getTime() {
        return time;
    }

    /**
     * @param time the time to set
     */
    public void setTime(String time) {
        this.time = time;
    }
}
