/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;

/**
 *
 * @author sumit
 */
public class AddNewsAction extends org.apache.struts.action.Action {

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
            throws Exception { Connection cn=connection.con();
        AddNews rg=(AddNews)form;
        String subject=rg.getSubject();
        FormFile desc=rg.getNews();
        
        String path=getServlet().getServletContext().getRealPath("/")+"News";
      byte[] bt=new byte[1045678];
    //  bt=desc.getBytes();
        File file=new File(path,subject+".pdf");
        
        // File  file=new File(path,mobile+".jpg");
        if(!file.exists()){
    
FileOutputStream fileOutStream = new FileOutputStream(file);
fileOutStream.write(desc.getFileData());
fileOutStream.flush();
fileOutStream.close();
}
  /*    FileWriter wr=new FileWriter(file);
      wr.write(desc);
      wr.close();
FileOutputStream fileOutStream = new FileOutputStream(file);
fileOutStream.write(desc.getFileData());
fileOutStream.flush();
fileOutStream.close();*/
          PreparedStatement pr=cn.prepareStatement("insert into news(date,subject)  values(CURDATE(),?)");
pr.setString(1,subject);

int a=pr.executeUpdate();
if(a>0){return mapping.findForward("AdminHome");}
        return mapping.findForward(SUCCESS);
    }
}
