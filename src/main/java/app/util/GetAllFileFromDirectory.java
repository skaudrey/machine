package app.util;

import java.io.File;
import java.util.ArrayList;

/**
 * Created by Administrator on 2016/1/21.
 */
public class GetAllFileFromDirectory {
    public static void main(String[] args) {
        ArrayList<String> filelist = new ArrayList<String>();
        getFiles("D:/temp/win32_11gR1_client/client",filelist);

    }

 /*
  * 通过递归得到某一路径下所有的目录及其文件
  */
    public static void getFiles(String filePath, ArrayList<String> fileList){
        File root = new File(filePath);
        File[] files = root.listFiles();
        for(File file:files){
            if(file.isDirectory()){    /* 递归调用 */
                getFiles(file.getAbsolutePath(), fileList);
                //filelist.add(file.getAbsolutePath());
                //System.out.println("显示"+filePath+"下所有子目录及其文件"+file.getAbsolutePath());
            }else{
                fileList.add(file.getAbsolutePath());
                //System.out.println("显示"+filePath+"下所有子目录"+file.getAbsolutePath());
            }
        }
    }
}
