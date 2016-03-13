package app.common;

import java.util.ArrayList;
import java.util.List;

/**
 * 常量
 */
public class Constant {

	/**
	 * 上传类型
	 */
	public final static String USER_UPLOAD_AVATAR = "0";//上传头像
	public final static String USER_UPLOAD_IMAGES="1";//上传图片
	public final static String USER_UPLOAD_PDF="3";//上传PDF
	public final static String USER_UPLOAD_PPT="4";//上传PPT

	/**
	 * 文件类型
	 */
	public final static String FILE_IMAGE = "image";//图片
	public final static String FILE_PDF="pdf";//pdf文件
	public final static String FILE_PPT="ppt";//ppt文件
	public final static String FILE_WORD="word";//word文件
	public final static String FILE_EXCEL="excel";//excel文件
	/**
	 * Application key
	 */
	public final static String LOGIN_STUDENT_MAP = "loginStudentMap";//用户id

	/**
	 * 用户类型
	 */
	public final static String USER_TYPE_STUDENT = "1";//学生

	/**
	 * Session key
	 */
	public final static String USER_ID = "userID";//用户id
	public final static String USER_NAME = "userName";//用户名
	public final static String USER_TYPE = "userType";//用户类型
	public final static String USER_AVATAR = "userAvatar";//用户头像


	/**
	 * 文件类型
	 */
	public final static String FILE_COURSE_IMAGE = "image";//课程图片



	//分页
	public final static int PAGE_SIZE=10;//每页默认显示的条目数

	//Boolean
	public final static String TRUE= "1";//正确
	public final static String FALSE= "0";//错误


	//表示成功与否的list
	/*
	* -1：fail
	* */
	public final static List<Integer> PROCESS_RESULT=new ArrayList<Integer>(1);
}
