package schoolhome.core.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import schoolhome.core.po.Commodity;
import schoolhome.core.po.Homework;
import schoolhome.core.po.Student;
import schoolhome.core.po.StudentWithHomework;
import schoolhome.core.po.TeacherCommodityHomework;
import schoolhome.core.po.User;
import schoolhome.core.service.HomeworkService;
import schoolhome.core.service.StudentGradeService;
import schoolhome.core.service.StudentService;
import schoolhome.core.service.StudentWithHomeworkService;
import schoolhome.core.service.TeacherCommodityHomeworkService;
@Controller
public class StudentController {
	@Autowired
	private StudentService studentService;
	@Autowired
	private StudentGradeService studentGradeService;
	@Autowired
	private HomeworkService homeworkService;
	@Autowired
	private TeacherCommodityHomeworkService teacherCommodityHomeworkService;
	@Autowired
	private StudentWithHomeworkService studentWithHomeworkService;
	
	private String dirPath = "C:/upload/wordFile/";
	/**
	 * 分页显示学生信息列表
	 * */
	@RequestMapping(value="/studentInformation.action")
	public String queryAllOrderPage(Model model,HttpSession session,HttpServletRequest request){
		session.removeAttribute("page_count");
		session.removeAttribute("studentList");
    	session.removeAttribute("p");
		int page_count;//总页数
  		int p;//当前页数
  		int size = 15;//每页记录数
  		int result_count  = studentService.queryCountOfRows();//总记录数
  		int begin;//当前页第一条记录索引号
  		page_count = (result_count+size-1)/size;
  		
  		String page_s = request.getParameter("page");
  		if(page_s==null) page_s="1";
  		p=Integer.parseInt(page_s);
  		begin = (p-1)*size;
    	ArrayList<Student> beans = studentService.queryAllOrderPage(begin, size);
    	
		session.setAttribute("studentList", beans);
		session.setAttribute("page_count", page_count);
		session.setAttribute("p", p);
		return "/admin/studentInformation";
	}
	/**
	 * 添加学生
	 * */
	@RequestMapping(value="/addStudent.action")
	public void addUser(Student student,HttpServletResponse response){
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (studentService.selectStudentByStudentName(student.getStudentName())==null) {
			studentService.addStudent(student);
			out.print("<script>alert('添加成功');window.location='/test5/studentInformation.action'</script>");
			out.flush();
			out.close();
		}else {
			out.print("<script>alert('studentName已存在');window.location='/test5/studentInformation.action'</script>");
			out.flush();
			out.close();
		}
	}
	/**
	 * 修改学生信息
	 * */
	@RequestMapping("/studentInformationUpdate.action")
	public void updateStudentInformation(int studentId,String studentName,String idCard,String password,int classNum,HttpServletResponse response){
		Student student = new Student(studentId, studentName, idCard, password, classNum);
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (studentService.selectStudentByStudentIdCard(idCard)!=null && studentService.selectStudentByStudentIdCard(idCard).getId()!=student.getId()) {
			out.print("<script>alert('idcard已存在');window.location='/test5/studentInformation.action'</script>");
			out.flush();
			out.close();
		}else {
			studentService.updateStudentInformation(student);
			out.print("<script>alert('修改成功');window.location='/test5/studentInformation.action'</script>");
			out.flush();
			out.close();
		
		}
		
	}
	/**
	 * 删除学生
	 * */
	@RequestMapping("/deleteStudentById.action")
	public void deleteStudentrById(int id,HttpServletResponse response){
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(studentService.queryStudentById(id)==null){
			out.print("<script>alert('用户不存在');window.location='/test5/studentInformation.action'</script>");
			out.flush();
			out.close();
		}else {
			//删除该学生前先把该学生的成绩信息删除
			studentGradeService.deleteStudentGradeByStudentId(id);
			studentService.deleteStudentById(id);
			out.print("<script>alert('删除成功');window.location='/test5/studentInformation.action'</script>");
			out.flush();
			out.close();
		}
	}
	/**
	 * 学生修改个人信息
	 * */
	@RequestMapping("/studentUpdateSelfInformation.action")
	public void studentUpdateSelfInformation(Student student,HttpServletResponse response,HttpSession session){
		
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (studentService.selectStudentByStudentIdCard(student.getIdCard())!=null && studentService.selectStudentByStudentIdCard(student.getIdCard()).getId()!=student.getId()) {
			out.print("<script>alert('idcard已存在');window.location='/test5/studentSelfInformation.action'</script>");
			out.flush();
			out.close();
		}else {
			session.removeAttribute("userinfor");
			studentService.updateStudentInformation(student);
			Student newStudent = studentService.queryStudentById(student.getId());
			session.setAttribute("userinfor", newStudent);
			out.print("<script>alert('修改成功');window.location='/test5/studentSelfInformation.action'</script>");
			out.flush();
			out.close();
		}
	}
	/**
	 * 学生提交作业
	 * */
	@RequestMapping("/studentSubmitHomework.action")
	public void studentSubmitHomework(@RequestParam("id")int id,@RequestParam("student_id")int student_id,@RequestParam("H_ID")int H_ID,@RequestParam("content")String content,@RequestParam("wordFile") MultipartFile uploadfile,HttpServletResponse response,HttpSession session,HttpServletRequest request){
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		String wordPath = null;
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
			//判断所上传文件是否存在
			if(!uploadfile.isEmpty()){
				//获取上传文件的原始名称
				String originalFilename = uploadfile.getOriginalFilename();
				//设置上传文件的保存地址目录
				File filePath = new File(dirPath);
				//如果保存文件的地址不存在，就先创建目录
				if(!filePath.exists())filePath.mkdirs();
				//使用UUID重新命名上传的文件名称（uuid_原始文件名称）
				String newFilename = UUID.randomUUID()+"_"+originalFilename;
				try {
					//使用MultipartFile接口的方法完成文件上传到指定位置
					uploadfile.transferTo(new File(dirPath+newFilename));
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				wordPath = newFilename;
			}
		StudentWithHomework updateSWH=studentWithHomeworkService.queryStudentWithHomeworkByStudentIdAndH_ID(student_id, H_ID);
		if(updateSWH==null){
			StudentWithHomework studentWithHomework = new StudentWithHomework();
			studentWithHomework.setH_ID(H_ID);
			studentWithHomework.setStudent_id(student_id);
			studentWithHomework.setContent(content);
			studentWithHomework.setIsDone(1);
			studentWithHomework.setWordFilePath(wordPath);
			studentWithHomeworkService.addStudentWithHomework(studentWithHomework);
		}else{
			updateSWH.setContent(content);
			updateSWH.setWordFilePath(wordPath);
			studentWithHomeworkService.updateStudentWithHomeworkInformation(updateSWH);
		}
		session.removeAttribute("userinfor");
		Student student = studentService.queryStudentById(student_id);
		session.setAttribute("userinfor", student);
		out.print("<script>alert('提交成功');window.location='/test5/studentQueryHomeworkDetail.action?id="+id+"'</script>");
		out.flush();
		out.close();
		
	}
	/**
	 * 下载作业
	 * @throws IOException 
	 * */
	@RequestMapping("/downloadHomework.action")
	public ResponseEntity<byte[]> downloadHomework(String fileName,HttpServletResponse response,HttpSession session,HttpServletRequest request) throws IOException{
		//指定要下载的文件所在路径
		String path = "F:/upload/wordFile/";
		//创建该文件对象
		File file = new File(path+File.separator+fileName);
		//设置响应头
		HttpHeaders headers = new HttpHeaders();
		//通知浏览器以下载的方式打开文件
		headers.setContentDispositionFormData("attachment", fileName);
		//定义以流的方式下载返回文件数据
		headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),headers,HttpStatus.OK);
		
	}
	
	/**
	 * 跳转studentQueryHomeworkDetail页面
	 * */
	@RequestMapping("/studentQueryHomeworkDetail.action")
	public String studentQueryHomeworkDetail(int id,HttpServletResponse response,HttpSession session,HttpServletRequest request){
		TeacherCommodityHomework teacherCommodityHomework = teacherCommodityHomeworkService.queryTeacherCommodityHomeworkById(id);
		request.setAttribute("teacherCommodityHomework", teacherCommodityHomework);
		Student student = (Student)session.getAttribute("userinfor");
		StudentWithHomework studentWithHomework = studentWithHomeworkService.queryStudentWithHomeworkByStudentIdAndH_ID(student.getId(), teacherCommodityHomework.getH_ID());
		request.setAttribute("studentWithHomework", studentWithHomework);
		return "/admin/studentQueryHomeworkDetail";
		
	}
	/**
	 * 学生查询作业界面
	 * */
	@RequestMapping("/studentQueryHomework.action")
	public String studentQueryHomework(int commodity_id,int teacher_id,HttpServletResponse response,HttpSession session,HttpServletRequest request){
		ArrayList<TeacherCommodityHomework> teacherCommodityHomeworkList=teacherCommodityHomeworkService.queryHomeworkByTeacherIdAndCommodityId(teacher_id, commodity_id);
		request.setAttribute("teacherCommodityHomeworkList", teacherCommodityHomeworkList);
		return "/admin/studentQueryHomework";
		
	}
	/**
	 * 跳转学生信息
	 * */
	@RequestMapping("/studentSelfInformation.action")
	public String studentSelfInformation(HttpServletResponse response,HttpSession session){
		
		return "/admin/studentSelfInformation";
		
	}
	/**
	 * 跳转学生系统的首页
	 * */
	@RequestMapping("/studentIndex.action")
	public String studentIndex(HttpServletResponse response,HttpSession session){
		
		return "/admin/studentIndex";
		
	}
	/**
	 * 跳转学生系统的查询课表界面
	 * */
	@RequestMapping("/studentQueryClassSchedule.action")
	public String studentQueryClassSchedule(HttpServletResponse response,HttpSession session){
		
		return "/admin/studentQueryClassSchedule";
		
	}
	/**
	 * 跳转学生系统的查询个人成绩界面
	 * */
	@RequestMapping("/studentQueryGrade.action")
	public String studentQueryGrade(HttpServletResponse response,HttpSession session){
		return "/admin/studentQueryGrade";
	}
	/**
	 * 管理员通过学生信息界面查询学生成绩信息
	 * */
	@RequestMapping("/studentInformationWithGrades.action")
	public String studentInformationWithGrades(HttpServletResponse response,HttpSession session,HttpServletRequest request){
		session.removeAttribute("studentGradesList");
		int id = Integer.parseInt(request.getParameter("id"));
		Student student = studentService.queryStudentById(id);
		session.setAttribute("studentGradesList", student);
		return "/admin/studentInformationWithGrades";
	}
}
