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
public class GetAppointment extends org.apache.struts.action.ActionForm {
    
    private String desc;
    private String date;

    /**
     * @return the doctor_id
  
    public String getDoctor_id() {
        return doctor_id;
    }

    /**
     * @param doctor_id the doctor_id to set

    public void setDoctor_id(String doctor_id) {
        this.doctor_id = doctor_id;
    }

    /**
     * @return the desc
     */
    public String getDesc() {
        return desc;
    }

    /**
     * @param desc the desc to set
     */
    public void setDesc(String desc) {
        this.desc = desc;
    }

    /**
     * @return the date
     */
    public String getDate() {
        return date;
    }

    /**
     * @param date the date to set
     */
    public void setDate(String date) {
        this.date = date;
    }
    

 
   
}
