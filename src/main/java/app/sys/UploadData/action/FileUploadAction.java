package app.sys.UploadData.action;
import java.io.File;
    import java.text.DateFormat;
    import java.text.SimpleDateFormat;
    import java.util.Date;
    import java.util.Random;

    //Using Commons-IO compontent

    import org.apache.commons.io.FileUtils;
    import org.apache.struts2.ServletActionContext;
    import com.opensymphony.xwork2.ActionSupport;
    import com.opensymphony.xwork2.ActionSupport;

    /**
     * Created by niubidedashenxc on 2015/12/8.
     */
    public class FileUploadAction extends MultipleFileUploadAction {
        //Encapsulating the attribute of upload file
        //NB: doc must be according to the setDoc. that is to say if the name is xxx,the setXxx() must be matched.
        //For example; setXxxFileName set XxxContentType
        private File doc; //<s:file name="doc" theme="simple" label="�ϴ��ļ�"/> doc must be mathced!
        //Encapsulating the attribute of upload file name
        private String filename;
        //Encapsulating  type of upload file;
        private String contentType;
        //the directory of file to save
        private String dir;
        //the filename of target file
        private String targetFileName;


        // In addition to the setDoc function ,the Action make use of the following
        //  three functions to set attribute  by setXxxFileName,SetXxxContentType
        //NB: the name of  following three functions must be according to setX**
        //if  "private file doc" is changed to "private file docabc",these three functions should be
        // changed to setDocabc,setDocabcFileName setDocabcContentType because the Action will invoke the function by name.
        public void setDoc(File file) {
            this.doc = file;
        }
        public void setDocFileName(String filename) {
            this.filename = filename;
        }
        public void setDocContentType(String contentType) {
            this.contentType = contentType;
        }



        public String execute()
        {
            super.execute();

            //targetFileName = null;
            try {
                targetFileName = getUploadFile();
            } catch (Exception e) {
                e.printStackTrace();
                ServletActionContext.getRequest().setAttribute("ERROR", e.getMessage());
                return ERROR;
            }
            ServletActionContext.getRequest().setAttribute("FilePath",targetFileName);//上传文件到服务器的路径
            return SUCCESS;
        }
        public String getUploadFile() throws Exception
        {
            //Get the server's real directory in which the  uploaded file would be saved.
           // String  realPath1 = ServletActionContext.getRequest().getRealPath("/upload");
            String  realPath  = ServletActionContext.getServletContext().getRealPath("/upload/tables");

          //  String  realPath3  = ServletActionContext.getServletContext().getRealPath("/");

            System.out.println(realPath);
            //System.out.println(realPath2);
            //System.out.println(realPath3);

            String targetDirectory = realPath;
            //Generate the target file name that is unique.
            targetFileName  = generateFileName(filename);
            // Generate the all path file name  of  uploaded file.
            getSession().setAttribute("txtfilename",filename);//上传的文件名称


            setDir(targetDirectory + File.separator + targetFileName);
            //Build target file from upload file
            File target = new File(targetDirectory,targetFileName);
            //copy temporary file to target file
            FileUtils.copyFile(doc, target);
            //doc.deleteOnExit();
            doc.delete();
            return this.dir;
        }

      //Create the unique file name in order to avoid the same file name when many people upload file.
//    private String generateFileName(String fileName) {
//        //Get current time
//        DateFormat format =  new SimpleDateFormat("yyMMddHHmmss");
//        //change to string
//        String formatDate = format.format(new Date());
//        // Generate the random file code
//        int random   = new Random().nextInt(10000);
//        //Get file suffix
//       //System.out.println("1111111111111111111111111");
//        int position = fileName.lastIndexOf(".");
//        //System.out.println("22222");
//        String extension = fileName.substring(position);
//        //Compose a new file name
//        return formatDate + random + extension;
//    }


        public String getDir() {
            return dir;
        }

        public void setDir(String dir) {
            this.dir = dir;
        }

        public String getContentType() {
            return contentType;
        }

        public void setContentType(String contentType) {
            this.contentType = contentType;
        }

        public String getTargetFileName() {
            return targetFileName;
        }

        public void setTargetFileName(String targetFileName) {
            this.targetFileName = targetFileName;
        }


    }
