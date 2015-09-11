/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;
import java.io.File;
import java.io.*;
import java.io.InputStream;
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
public class DocRegAction extends org.apache.struts.action.Action {

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
        DocReg rg=(DocReg)form;
        FormFile fl=rg.getFile();
        String name=rg.getUsername();
        String fname=rg.getFname();
        String pass=rg.getPass();
        String address=rg.getAddress();
        String mobile=rg.getMobile();
        String college=rg.getCollegename();
        String special=rg.getSpecial();
        String sex=rg.getSex();
        String year=rg.getYear();
        String email=rg.getEmail();
        String fileName=fl.getFileName();
        int fileSize=fl.getFileSize();
        String contentType=fl.getContentType();
        //String Path=getServlet().getServletContext().getRealPath("/")+"upload";
        String path=getServlet().getServletContext().getRealPath("/")+"Chansu";
        if(contentType.equalsIgnoreCase("image/jpeg")){
         if(!fileName.equals("")){
         File  file=new File(path,mobile+".jpg");
        if(!file.exists()){
    
FileOutputStream fileOutStream = new FileOutputStream(file);
fileOutStream.write(fl.getFileData());
fileOutStream.flush();
fileOutStream.close();
}
        PreparedStatement pr=cn.prepareStatement("insert into doctor(name,fname,password,college,year,specialize,mobile,address,sex,Email_id,pics)  values(?,?,?,?,?,?,?,?,?,?,?)");
      FileInputStream fs=new FileInputStream(file);
        pr.setString(1,name);
        pr.setString(2,fname);
        pr.setString(3, pass);
        pr.setString(4, college);
        pr.setString(5, year);
        pr.setString(6, special);
        pr.setString(7, mobile);
        pr.setString(8, address);
        pr.setString(9,sex);
        pr.setString(10,email);
      pr.setBinaryStream(11,(InputStream)fs,fileSize);
        
        int a=pr.executeUpdate();
        if(a!=0){   
        PreparedStatement pm=cn.prepareStatement("select *from doctor where mobile=?");
       pm.setString(1,mobile);
       ResultSet rs=pm.executeQuery();
       if(rs.next()){
        request.setAttribute("username",rs.getString("name"));
         request.setAttribute("fname", rs.getString("fname"));
         request.setAttribute("D_id",rs.getString("D_id"));
         request.setAttribute("address",rs.getString("address"));
         request.setAttribute("mobile",rs.getString("mobile"));
         String login=rs.getString("D_id");
         String password=rs.getString("password");
         PreparedStatement pt=cn.prepareStatement("insert into login values(?,?,?)");
         pt.setString(1,login);
         pt.setString(2,pass);
         pt.setString(3,"doctor");
         pt.executeUpdate();
        }
       String path1=file.getAbsolutePath();
       request.setAttribute("path",path1);
       request.setAttribute("fileName", fileName);
        return mapping.findForward("Dock");
        
        }
              
    }}return mapping.findForward(SUCCESS);
}}
