package app.sys.appmat.action;

import app.common.action.GenericActionSupport;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.struts2.dispatcher.multipart.MultiPartRequestWrapper;

import javax.servlet.ServletContext;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Random;

/**
 * Created by Skaudrey on 2016/3/5.
 */
public class ScanFileDeal extends GenericActionSupport {

    private String ImageType;
    public String[] RemoteFileFileName;
    public String RemoteFileContentType;
    public File[] RemoteFile;

    public String getRemoteFileContentType() {
        return RemoteFileContentType;
    }

    public void setRemoteFileContentType(String remoteFileContentType) {
        RemoteFileContentType = remoteFileContentType;
    }

    public String getImageType() {
        return ImageType;
    }

    public void setImageType(String imageType) {
        ImageType = imageType;
    }

    public String[] getRemoteFileFileName() {
        return RemoteFileFileName;
    }

    public void setRemoteFileFileName(String[] remoteFileFileName) {
        RemoteFileFileName = remoteFileFileName;
    }

    public File[] getRemoteFile() {
        return RemoteFile;
    }

    public void setRemoteFile(File[] remoteFile) {
        RemoteFile = remoteFile;
    }


    //save file into the specified locations of server
    public String saveFileIntoDir(){

        // the file suffix which are allowed to be uploaded
        HashMap<String, String> extMap = new HashMap<String, String>();
        extMap.put("image","jpg,jpeg,pdf,tif");
        // the maxsize of uploading file
        long maxSize = 50*1024*1024;
        String dirName = mServletRequest.getParameter("dir");

        //the saving path 文件保存目录路径
        String savePath = mServletRequest.getServletContext().getRealPath("/")+ "UploadImages";
        // 文件保存目录URL
        String saveUrl = mServletRequest.getContextPath() + "/UploadImages";

        // Create a factory for disk-based file items
        DiskFileItemFactory factory = new DiskFileItemFactory();

        // Configure a repository (to ensure a secure temp location is used)
        ServletContext servletContext = this.getServletContext();
        File repository = (File) servletContext.getAttribute("javax.servlet.context.tempdir");
        factory.setRepository(repository);


        // Set factory constraints
        factory.setSizeThreshold(1000000000);// Sets the size threshold beyond which files are written directly to disk.

        // Parse the request
	/*warning:
	for Struts1,you can use ServletFileUpload.parseRequest(request)
	* however,when it becomes Struts2,it will be null.
	* solution for Struts2:MultiPartRequestWrapper,cause Struts2 will wrpper the raw request
	 * e.g.
	 * MultiPartRequestWrapper wrapper = (MultiPartRequestWrapper) request;
	File[] files = wrapper.getFiles("RemoteFile");
	ATTENTION:"RemoteFile" is the field name of control.
	* */
        MultiPartRequestWrapper wrapper = (MultiPartRequestWrapper) mServletRequest;
        File[] files = wrapper.getFiles("RemoteFile");
        String[] fileNames=wrapper.getFileNames("RemoteFile");

        long nSize=files.length;
        if(nSize==0){
            System.out.println("None");
            return "";
        }
        for(int i=0;i<nSize;i++){
            //get filename
            File file = files[i];
            String fileName = fileNames[i];

            //check the size of file less than maxSize
            if(file.length() > maxSize){
                try {
                    mServletResponse.getWriter().write("File check outSized:");
                } catch (IOException e) {
                    e.printStackTrace();
                }
                return "";
            }
            //check suffix;

            String fileExt = fileName.substring(fileName.lastIndexOf(".") + 1).toLowerCase();
            SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
            String newFileName = df.format(new Date()) + "_" + new Random().nextInt(1000) + "." + fileExt;

            try {
                InputStream in = new FileInputStream(file);
                File uploadFile = new File(savePath, newFileName);
                OutputStream outFileStream = new FileOutputStream(uploadFile);
                byte[] buffer = new byte[1024 * 1024];
                int length;
                while ((length = in.read(buffer)) > 0) {
                    outFileStream.write(buffer, 0, length);
                }
                mServletResponse.getWriter().write("Done");
                in.close();
                outFileStream.close();
            } catch (FileNotFoundException ex) {
                ex.printStackTrace();
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        }

        return SUCCESS;
    }
}
