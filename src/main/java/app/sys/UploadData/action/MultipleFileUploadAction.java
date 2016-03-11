package app.sys.UploadData.action;

import app.common.action.GenericActionSupport;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

//Using Commons-IO compontent

/**
 * Created by niubidedashenxc on 2015/12/8.
 */
public class MultipleFileUploadAction extends GenericActionSupport {
    //Encapsulating the attribute of upload file
    //NB: doc must be according to the setDoc. that is to say if the name is xxx,the setXxx() must be matched.
    //For example; setXxxFileName set XxxContentType
    private File[] MultipleDocs; //<s:file name="doc" theme="simple" label="�ϴ��ļ�"/> doc must be mathced!
    //Encapsulating the attribute of upload file name
    private String[] MultipleDocsFileNames;
    //Encapsulating  type of upload file;
    private String[] MultipleDocsContentTypes;

    public File[] getMultipleDocs() {
        return MultipleDocs;
    }

    public void setMultipleDocs(File[] multipleDocs) {
        this.MultipleDocs = multipleDocs;
    }

    public String[] getMultipleDocsFileName() {
        return MultipleDocsFileNames;
    }

    public void setMultipleDocsFileName(String[] multipleDocsFileNames) {
        this.MultipleDocsFileNames = multipleDocsFileNames;
    }

    public String[] getMultipleDocsContentType() {
        return MultipleDocsContentTypes;
    }

    public void setMultipleDocsContentType(String[] multipleDocsContentTypes) {
        this.MultipleDocsContentTypes = multipleDocsContentTypes;
    }
    // In addition to the setDoc function ,the Action make use of the following
    //  three functions to set attribute  by setXxxFileName,SetXxxContentType
    //NB: the name of  following three functions must be according to setX**
    //if  "private file doc" is changed to "private file docabc",these three functions should be
    // changed to setDocabc,setDocabcFileName setDocabcContentType because the Action will invoke the function by name.
//    public void setDoc(File file) {
//        this.doc = file;
//    }
//    public void setDocFileName(String filename) {
//        this.filename = filename;
//    }
//    public void setDocContentType(String contentType) {
//        this.contentType = contentType;
//    }



    //the directory of file to save
    private String[] multipleDocsTargetFileAllPaths;
    //the filename of target file
    private String[] multipleDocsTargetFileNames;

    public String execute()
    {
        //super.execute();
       // String targetFileName = null;
        try {
            multipleDocsTargetFileNames = null;
            multipleDocsTargetFileAllPaths = null;
            if(null == MultipleDocs || null == MultipleDocsFileNames || null == MultipleDocsContentTypes )
                return SUCCESS;
            if(MultipleDocs.length < 1 || MultipleDocsFileNames.length < 1 || MultipleDocsContentTypes.length < 1) return SUCCESS;

            this.multipleDocsTargetFileNames = getAllUploadFile();
        } catch (Exception e) {
            e.printStackTrace();
            ServletActionContext.getRequest().setAttribute("ERROR", e.getMessage());
            return ERROR;
        }
        if(null != multipleDocsTargetFileAllPaths && multipleDocsTargetFileAllPaths.length > 0) {
            getSession().setAttribute("multipleDocsTargetFileAllPaths", multipleDocsTargetFileAllPaths);
            getSession().setAttribute("MultipleDocsClientFileNames", MultipleDocsFileNames);
            getSession().setAttribute("MultipleDocsContentTypes", MultipleDocsContentTypes);
        }

        return SUCCESS;
    }
    public void clearSessionObject()
    {
        getSession().setAttribute("multipleDocsTargetFileAllPaths", null);
        getSession().setAttribute("MultipleDocsClientFileNames", null);
        getSession().setAttribute("MultipleDocsContentTypes", null);
    }
    public String[] getAllUploadFile() throws Exception
    {
        //Get the server's real directory in which the  uploaded file would be saved.
       // String  realPath1 = ServletActionContext.getRequest().getRealPath("/upload");
        String  realPath  = ServletActionContext.getServletContext().getRealPath("/upload");

       // System.out.println(realPath);

        String targetDirectory = realPath;
        int nFileCount = this.MultipleDocs.length;
        this.multipleDocsTargetFileNames  = new String[nFileCount];
        this.multipleDocsTargetFileAllPaths = new String[nFileCount];

        for(int i = 0; i < nFileCount;i++) {
            //Generate the target file name that is unique.
            multipleDocsTargetFileNames[i] = generateFileName(this.MultipleDocsFileNames[i]);//client file name
            multipleDocsTargetFileAllPaths[i] = targetDirectory + File.separator + multipleDocsTargetFileNames[i];
            File target = new File(targetDirectory,multipleDocsTargetFileNames[i]);
            FileUtils.copyFile(MultipleDocs[i], target);
            MultipleDocs[i].delete();
        }
        // Generate the all path file name  of  uploaded file.
       // setDir(targetDirectory + File.separator + targetFileName);
        //Build target file from upload file
        //File target = new File(targetDirectory,targetFileName);
        //copy temporary file to target file
        //FileUtils.copyFile(doc, target);
        //doc.deleteOnExit();
        //doc.delete();
        return this.multipleDocsTargetFileAllPaths;
    }

  //Create the unique file name in order to avoid the same file name when many people upload file.
    protected String generateFileName(String fileName) {
        //Get current time
        DateFormat format =  new SimpleDateFormat("yyMMddHHmmss");
        //change to string
        String formatDate = format.format(new Date());
        // Generate the random file code
        int random   = new Random().nextInt(10000);
        //Get file suffix
       //System.out.println("1111111111111111111111111");
        int position = fileName.lastIndexOf(".");
        //System.out.println("22222");
        String extension = fileName.substring(position);
        //Compose a new file name
        return formatDate + random + extension;
}


//    public String getDir() {
//        return dir;
//    }
//
//    public void setDir(String dir) {
//        this.dir = dir;
//    }
//
//    public String getContentType() {
//        return contentType;
//    }
//
//    public void setContentType(String contentType) {
//        this.contentType = contentType;
//    }
//
//    public String getTargetFileName() {
//        return targetFileName;
//    }
//
//    public void setTargetFileName(String targetFileName) {
//        this.targetFileName = targetFileName;
//    }



    public String[] getMultipleDocsDirs() {
        return multipleDocsTargetFileAllPaths;
    }

    public void setMultipleDocsDirs(String[] multipleDocsTargetFileAllPaths) {
        this.multipleDocsTargetFileAllPaths = multipleDocsTargetFileAllPaths;
    }

    public String[] getMultipleDocsTargetFileNames() {
        return multipleDocsTargetFileNames;
    }

    public void setMultipleDocsTargetFileNames(String[] multipleDocsTargetFileNames) {
        this.multipleDocsTargetFileNames = multipleDocsTargetFileNames;
    }

}
