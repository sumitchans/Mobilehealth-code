/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.upload.FormFile;

/**
 *
 * @author sumit
 */
public class AddNews extends org.apache.struts.action.ActionForm {
    
    private String subject;
    private FormFile news;

    /**
     * @return the subject
     */
    public String getSubject() {
        return subject;
    }

    /**
     * @param subject the subject to set
     */
    public void setSubject(String subject) {
        this.subject = subject;
    }

    /**
     * @return the news
     */
    public FormFile getNews() {
        return news;
    }

    /**
     * @param news the news to set
     */
    public void setNews(FormFile news) {
        this.news = news;
    }

    /**
     * @return the desc
     */
   /* public String getDesc() {
        return desc;
    }

    /**
     * @param desc the desc to set
     
    public void setDesc(String desc) {
        this.desc = desc;
    }*/
}
