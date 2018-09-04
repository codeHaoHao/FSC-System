package schoolhome.core.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import schoolhome.core.po.ClassBean;
import schoolhome.core.po.Commodity;
import schoolhome.core.po.Homework;
import schoolhome.core.po.Student;
import schoolhome.core.po.StudentGrade;
import schoolhome.core.po.StudentWithHomework;
import schoolhome.core.po.Teacher;
import schoolhome.core.po.TeacherCommodityHomework;
import schoolhome.core.service.ClassBeanWithCommodityService;
import schoolhome.core.service.HomeworkService;
import schoolhome.core.service.StudentGradeService;
import schoolhome.core.service.StudentService;
import schoolhome.core.service.StudentWithHomeworkService;
import schoolhome.core.service.TeacherCommodityHomeworkService;
import schoolhome.core.service.TeacherService;

@Controller
public class TeacherController {
	@Autowired
	private TeacherService teacherService;
	@Autowired
	private StudentGradeService studentGradeService;
	@Autowired
	private ClassBeanWithCommodityService classBeanWithCommodityService;
	@Autowired
	private StudentService studentService;
	@Autowired
	private HomeworkService homeworkService;
	@Autowired
	private TeacherCommodityHomeworkService teacherCommodityHomeworkService;
	@Autowired
	private StudentWithHomeworkService studentWithHomeworkService;
	/**
	 * 分页显示老师信息列表
	 * */
	@RequestMapping(value="/teacherInformation.action")
	public String queryAllOrderPage(Model model,HttpSession session,HttpServletRequest request){
		session.removeAttribute("page_count");
		session.removeAttribute("teacherList");
    	session.removeAttribute("p");
		int page_count;//总页数
  		int p;//当前页数
  		int size = 15;//每页记录数
  		int result_count  = teacherService.queryCountOfRows();//总记录数
  		int begin;//当前页第一条记录索引号
  		page_count = (result_count+size-1)/size;
  		
  		String page_s = request.getParameter("page");
  		if(page_s==null) page_s="1";
  		p=Integer.parseInt(page_s);
  		begin = (p-1)*size;
    	ArrayList<Teacher> beans = teacherService.queryAllOrderPage(begin, size);
    	
		session.setAttribute("teacherList", beans);
		session.setAttribute("page_count", page_count);
		session.setAttribute("p", p);
		return "/admin/teacherInformation";
	}
	/**
	 * 添加老师
	 * */
	@RequestMapping(value="/addTeacher.action")
	public void addUser(Teacher teacher,HttpServletResponse response){
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (teacherService.selectTeacherByTeacherUserName(teacher.getUserName())==null) {
			teacherService.addTeacher(teacher);
			out.print("<script>alert('添加成功');window.location='/test5/teacherInformation.action'</script>");
			out.flush();
			out.close();
		}else {
			out.print("<script>alert('userName用户名已存在');window.location='/test5/teacherInformation.action'</script>");
			out.flush();
			out.close();
		}
	}
	/**
	 * 修改老师信息
	 * */
	@RequestMapping("/teacherInformationUpdate.action")
	public void updateTeacherInformation(int teacherId,String userName,String password,String teacherName,int age,String telephone,String gender,HttpServletResponse response){
		Teacher teacher = new Teacher(teacherId, userName, password, teacherName, age, telephone, gender);
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (teacherService.selectTeacherByTeacherUserName(teacher.getUserName())!=null && teacherService.selectTeacherByTeacherUserName(teacher.getUserName()).getId()!=teacher.getId()) {
			out.print("<script>alert('userName用户名已存在');window.location='/test5/teacherInformation.action'</script>");
			out.flush();
			out.close();
		}else {
			teacherService.updateTeacherInformation(teacher);
			out.print("<script>alert('修改成功');window.location='/test5/teacherInformation.action'</script>");
			out.flush();
			out.close();
		}
		
	}
	/**
	 * 删除老师通过id
	 * */
	@RequestMapping("/deleteTeacherById.action")
	public void deleteTeacherrById(int id,HttpServletResponse response){
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(teacherService.queryTeacherById(id)==null){
			out.print("<script>alert('用户不存在');window.location='/test5/teacherInformation.action'</script>");
			out.flush();
			out.close();
		}else {
			teacherService.deleteTeacherById(id);
			out.print("<script>alert('删除成功');window.location='/test5/teacherInformation.action'</script>");
			out.flush();
			out.close();
		}
	}
	/**
	 * 老师修改学生成绩
	 * */
	@RequestMapping("/teacherUpdateStudentGrade.action")
	public void teacherUpdateStudentGrade(int classBean_id,int student_id,int commodity_id,double grade,HttpServletResponse response,HttpSession session,HttpServletRequest request){
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		Teacher teacher = (Teacher)session.getAttribute("userinfor");
		session.removeAttribute("userinfor");
		PrintWriter out=null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		StudentGrade studentGrade=studentGradeService.queryStudentGradeByStudentIdAndCommodityId(student_id, commodity_id);
		if(studentGrade!=null){
			
			studentGrade.setGrade(grade);
			studentGradeService.updateStudentGradeInformation(studentGrade);
			for(ClassBean classBean:teacher.getClassBeanList()){
				if(classBean.getId()==classBean_id){
				for(Student studentBean:classBean.getStudentList()){
					if(studentBean.getId()==student_id){
						//studentBean=studentService.queryStudentById(student_id);
						for(Commodity studentCommodity:studentBean.getCommodityList()){
							if(studentCommodity.getId()==commodity_id){
								studentCommodity.setGrade(grade);
								break;
							}
						}
						break;
					}
				}
				break;
				}
			}
			session.setAttribute("userinfor", teacher);
			out.print("<script>alert('成绩修改成功');window.location='/test5/teacherQueryStudentGradeInformation.action?id="+classBean_id+"'</script>");
			out.flush();
			out.close();
			
		}else {
			studentGrade = new StudentGrade();
			studentGrade.setStudent_id(student_id);
			studentGrade.setCommodity_id(commodity_id);
			studentGrade.setGrade(grade);
			studentGradeService.addStudentGrade(studentGrade);
			for(ClassBean classBean:teacher.getClassBeanList()){
				if(classBean.getId()==classBean_id){
					for(Student studentBean:classBean.getStudentList()){
						if(studentBean.getId()==student_id){
							classBean.getStudentList().remove(studentBean);
							Student newStudentBean=studentService.queryStudentById(student_id);
							for(Commodity studentCommodity:newStudentBean.getCommodityList())
								studentCommodity.setClassBeanTeacher(classBeanWithCommodityService.queryTeacherByCommodityIdAndClassBeanId(studentCommodity.getId(), classBean_id));
							classBean.getStudentList().add(newStudentBean);
							break;
						}
						}
				break;
				}
			}
			
			session.setAttribute("userinfor", teacher);
			out.print("<script>alert('学生成绩添加成功');window.location='/test5/teacherQueryStudentGradeInformation.action?id="+classBean_id+"'</script>");
			out.flush();
			out.close();
		}
		
		
	}
	/**
	 * 老师发布作业
	 * */
	@RequestMapping("/teacherPublishHomeworkInformation.action")
	public void teacherPublishHomeworkInformation(String H_name,int commodity_id,int teacher_id,String H_startTime,String H_endTime,String H_content,HttpServletResponse response,HttpSession session,HttpServletRequest request){
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.ENGLISH);
		Date time=null;
		Timestamp startTime=null;
		Timestamp endTime=null;
		try {
			time = dateFormat.parse(H_startTime.replace('T', ' '));
			startTime = new Timestamp(time.getTime());
			time = dateFormat.parse(H_endTime.replace('T', ' '));
			endTime = new Timestamp(time.getTime());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		TeacherCommodityHomework teacherCommodityHomework = new TeacherCommodityHomework();
		teacherCommodityHomework.setCommodity_id(commodity_id);
		teacherCommodityHomework.setTeacher_id(teacher_id);
		Homework homework=new Homework();
		Date now = new Date();
		DateFormat dateFormat2 = new SimpleDateFormat("dd HH:mm:ss", Locale.ENGLISH);
		String H_ID = dateFormat2.format(now);
		H_ID=H_ID.replace("-", "");
		H_ID=H_ID.replace(" ", "");
		H_ID=H_ID.replace(":", "");
		homework.setH_ID(Integer.parseInt(H_ID));
		homework.setH_startTime(startTime);
		homework.setH_endTime(endTime);
		homework.setH_name(H_name);
		homework.setH_content(H_content);
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		homeworkService.addHomework(homework);
		teacherCommodityHomework.setH_ID(Integer.parseInt(H_ID));
		if(teacherCommodityHomeworkService.addTeacherCommodityHomework(teacherCommodityHomework)>0){
			session.removeAttribute("userinfor");
			Teacher teacher = teacherService.queryTeacherById(teacher_id);
			session.setAttribute("userinfor", teacher);
			out.print("<script>alert('发布成功');window.location='/test5/teacherIndex.action'</script>");
			out.flush();
			out.close();
		}else{
			out.print("<script>alert('发布出现问题，发布失败');window.location='/test5/teacherIndex.action'</script>");
			out.flush();
			out.close();
		}
	}
	/**
	 * 老师更新作业操作
	 * */
	@RequestMapping("/teacheExecuteUpdateHomework.action")
	public void teacheExecuteUpdateHomework(int H_ID,String H_name,int teacher_id,String H_startTime,String H_endTime,String H_content,HttpServletResponse response,HttpSession session,HttpServletRequest request){
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.ENGLISH);
		Date time=null;
		Timestamp startTime=null;
		Timestamp endTime=null;
		try {
			time = dateFormat.parse(H_startTime.replace('T', ' '));
			startTime = new Timestamp(time.getTime());
			time = dateFormat.parse(H_endTime.replace('T', ' '));
			endTime = new Timestamp(time.getTime());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Homework homework=new Homework();
		homework.setH_ID(H_ID);
		homework.setH_startTime(startTime);
		homework.setH_endTime(endTime);
		homework.setH_name(H_name);
		homework.setH_content(H_content);
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(homeworkService.updateHomeworkInformation(homework)>0){
			session.removeAttribute("userinfor");
			Teacher teacher = teacherService.queryTeacherById(teacher_id);
			session.setAttribute("userinfor", teacher);
			out.print("<script>alert('更新成功');window.location='/test5/teacherQueryHomeworkDetail.action?id="+H_ID+"'</script>");
			out.flush();
			out.close();
		}else{
			out.print("<script>alert('更新出现问题，更新失败');window.location='/test5/teacherQueryHomeworkDetail.action?id="+H_ID+"'</script>");
			out.flush();
			out.close();
		}
		
		
	}
	/**
	 * 老师给学生批改成绩
	 * */
	@RequestMapping("/teacherCheckStudentHomeworkGrade.action")
	public void teacherCheckStudentHomeworkGrade(int S_H_id,double grade,HttpServletResponse response,HttpSession session,HttpServletRequest request){
		StudentWithHomework studentWithHomework = studentWithHomeworkService.queryStudentWithHomeworkById(S_H_id);
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(studentWithHomework==null){
			out.print("<script>alert('学生作业信息不存在');window.location='/test5/teacherCheckStudentHomework.action?id="+S_H_id+"'</script>");
			out.flush();
			out.close();
		}else {
			studentWithHomework.setGrade(grade);
			studentWithHomeworkService.updateStudentWithHomeworkInformation(studentWithHomework);
			
			out.print("<script>alert('成绩批改成功');window.location='/test5/teacherCheckStudentHomework.action?id="+S_H_id+"'</script>");
			out.flush();
			out.close();
		}
	}
	/**
	 * 跳转teacherCheckStudentHomework页面
	 * */
	@RequestMapping("/teacherCheckStudentHomework.action")
	public String teacherCheckStudentHomework(int id,HttpServletResponse response,HttpSession session,HttpServletRequest request){
		StudentWithHomework studentWithHomework = studentWithHomeworkService.queryStudentWithHomeworkById(id);
		request.setAttribute("studentWithHomework", studentWithHomework);
		return "/admin/teacherCheckStudentHomework";
	}
	/**
	 * 跳转teacherPublishHomework页面
	 * */
	@RequestMapping("/teacherUpdateHomework.action")
	public String teacheUpdateHomework(int id,HttpServletResponse response,HttpSession session,HttpServletRequest request){
		Homework homework = homeworkService.queryHomeworkById(id);
		request.setAttribute("homework", homework);
		return "/admin/teacherUpdateHomework";
		
	}
	
	/**
	 * 老师删除homework
	 * */
	@RequestMapping("/teacherDeleteHomework.action")
	public void teacherDeleteHomework(int id,HttpServletResponse response,HttpSession session,HttpServletRequest request){
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			//删除作业时先删除老师与该作业的联系
			teacherCommodityHomeworkService.deleteTeacherCommodityHomeworkByH_ID(id);
			homeworkService.deleteHomeworkById(id);
			Teacher userinfor = (Teacher)session.getAttribute("userinfor");
			session.removeAttribute("userinfor");
			
			Teacher teacher = teacherService.queryTeacherById(userinfor.getId());
			session.setAttribute("userinfor", teacher);
			out.print("<script>alert('删除成功');window.location='/test5/teacherQueryHomeworkInformation.action'</script>");
			out.flush();
			out.close();
	}
	/**
	 * 跳转teacherPublishHomework页面
	 * */
	@RequestMapping("/teacherPublishHomework.action")
	public String teacherPublishHomework(HttpServletResponse response,HttpSession session,HttpServletRequest request){
		return "/admin/teacherPublishHomework";
		
	}
	/**
	 * 跳转teacherQueryHomeworkDetail页面
	 * */
	@RequestMapping("/teacherQueryHomeworkDetail.action")
	public String teacherQueryHomeworkDetail(int id,HttpServletResponse response,HttpSession session,HttpServletRequest request){
		Homework homework = homeworkService.queryHomeworkById(id);
		ArrayList<StudentWithHomework> studentWithHomeworkList = studentWithHomeworkService.queryStudentWithHomeworkByH_ID(id);
		request.setAttribute("homework", homework);
		request.setAttribute("studentWithHomeworkList", studentWithHomeworkList);
		return "/admin/teacherQueryHomeworkDetail";
		
	}
	/**
	 * 跳转老师查看作业情况页面
	 * */
	@RequestMapping("/teacherQueryHomeworkInformation.action")
	public String teacherQueryHomeworkInformation(HttpServletResponse response,HttpSession session,HttpServletRequest request){
		return "/admin/teacherQueryHomeworkInformation";
		
	}
	/**
	 * 跳转admin查看老师发布的作业页面
	 * */
	@RequestMapping("/adminQueryTeacherHomework.action")
	public String adminQueryTeacherHomework(int id,HttpServletResponse response,HttpSession session,HttpServletRequest request){
		Teacher teacher=teacherService.queryTeacherById(id);
		request.setAttribute("teacherInformation", teacher);
		return "/admin/adminQueryTeacherHomework";
		
	}
	/**
	 * 跳转老师系统的首页
	 * */
	@RequestMapping("/teacherIndex.action")
	public String teacherIndex(HttpServletResponse response,HttpSession session){
		
		return "/admin/teacherIndex";
		
	}
	/**
	 * 跳转老师查询某班的学生信息页面
	 * */
	@RequestMapping("/teacherQueryStudentGradeInformation.action")
	public String teacherQueryStudentGradeInformation(int id,HttpServletResponse response,HttpSession session,HttpServletRequest request){
		request.setAttribute("classBean_id", id);
		return "/admin/teacherQueryStudentGradeInformation";
		
	}
	/**
	 * 跳转老师功能页面
	 * */
	@RequestMapping("/teacherFDT.action")
	public String teacherFDT(int id,HttpServletResponse response,HttpSession session,HttpServletRequest request){
		request.setAttribute("classBean_id", id);
		return "/admin/teacherFDT";
		
	}
	/**
	 * 跳转老师功能页面
	 * */
	@RequestMapping("/teacherQueryClassSchedule.action")
	public String teacherQueryClassSchdule(int id,HttpServletResponse response,HttpSession session,HttpServletRequest request){
		request.setAttribute("classBean_id", id);
		return "/admin/teacherQueryClassSchedule";
		
	}
	/**
	 * 跳转老师更改个人信息页面
	 * */
	@RequestMapping("/teacherUpdateSelfInformation.action")
	public String teacherUpdateSelfInformation(HttpServletResponse response,HttpSession session,HttpServletRequest request){
		return "/admin/teacherUpdateSelfInformation";
		
	}
	/**
	 * 老师修改个人信息
	 * */
	@RequestMapping("/teacherExecuteUpdateSelfInformation.action")
	public void teacherExecuteUpdateSelfInformation(Teacher teacher,HttpServletResponse response,HttpSession session,HttpServletRequest request){
		
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if(teacherService.updateTeacherInformation(teacher)>0){
		session.removeAttribute("userinfor");
		Teacher newTeacher = teacherService.queryTeacherById(teacher.getId());
		session.setAttribute("userinfor", newTeacher);
		out.print("<script>alert('个人信息修改成功');window.location='/test5/teacherUpdateSelfInformation.action'</script>");
		out.flush();
		out.close();
		}
	}
}
