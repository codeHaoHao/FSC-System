package schoolhome.core.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import schoolhome.core.po.Parent;
import schoolhome.core.po.Student;
import schoolhome.core.po.StudentWithHomework;
import schoolhome.core.po.TeacherCommodityHomework;
import schoolhome.core.service.HomeworkService;
import schoolhome.core.service.ParentService;
import schoolhome.core.service.StudentService;
import schoolhome.core.service.StudentWithHomeworkService;
import schoolhome.core.service.TeacherCommodityHomeworkService;

@Controller
public class ParentController {
	@Autowired
	private ParentService parentService;
	@Autowired
	private StudentService studentService;
	@Autowired
	private HomeworkService homeworkService;
	@Autowired
	private TeacherCommodityHomeworkService teacherCommodityHomeworkService;
	@Autowired
	private StudentWithHomeworkService studentWithHomeworkService;
	/**
	 * 分页显示家长信息列表
	 * */
	@RequestMapping(value="/parentInformation.action")
	public String queryAllOrderPage(Model model,HttpSession session,HttpServletRequest request){
		session.removeAttribute("page_count");
		session.removeAttribute("parentList");
    	session.removeAttribute("p");
		int page_count;//总页数
  		int p;//当前页数
  		int size = 15;//每页记录数
  		int result_count  = parentService.queryCountOfRows();//总记录数
  		int begin;//当前页第一条记录索引号
  		page_count = (result_count+size-1)/size;
  		
  		String page_s = request.getParameter("page");
  		if(page_s==null) page_s="1";
  		p=Integer.parseInt(page_s);
  		begin = (p-1)*size;
    	ArrayList<Parent> beans = parentService.queryAllOrderPage(begin, size);
    	
		session.setAttribute("parentList", beans);
		session.setAttribute("page_count", page_count);
		session.setAttribute("p", p);
		return "/admin/parentInformation";
	}
	
	/**
	 * 添加家长
	 * */
	@RequestMapping(value="/addParent.action")
	public void addParent(Parent parent,HttpServletResponse response){
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (parentService.selectParentByParentUserName(parent.getUserName())==null) {
			parentService.addParent(parent);
			out.print("<script>alert('添加成功');window.location='/test5/parentInformation.action'</script>");
			out.flush();
			out.close();
		}else {
			out.print("<script>alert('userName用户名已存在');window.location='/test5/parentInformation.action'</script>");
			out.flush();
			out.close();
		}
	}
	/**
	 * 修改家长信息
	 * */
	@RequestMapping("/parentInformationUpdate.action")
	public void updateParentInformation(int parentId,String userName,String password,String parentName,String profession,String workspace,int student_id,String telephone,HttpServletResponse response){
		Parent parent = new Parent(parentId, userName, password, parentName, profession, workspace, student_id, telephone);
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (parentService.selectParentByParentUserName(userName)!=null && parentService.selectParentByParentUserName(userName).getId()!=parent.getId()) {
			out.print("<script>alert('userName用户名已存在');window.location='/test5/parentInformation.action'</script>");
			out.flush();
			out.close();
		}else {
			parentService.updateParentInformation(parent);
			out.print("<script>alert('修改成功');window.location='/test5/parentInformation.action'</script>");
			out.flush();
			out.close();
		
		}
		
	}
	/**
	 * 家长修改个人信息
	 * */
	@RequestMapping("/parentUpdateInformation.action")
	public void parentUpdateInformation(Parent parent,String studentIdCard,HttpServletResponse response,HttpSession session){
		Student student  = studentService.selectStudentByStudentIdCard(studentIdCard);
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (parentService.selectParentByParentUserName(parent.getUserName())!=null && parentService.selectParentByParentUserName(parent.getUserName()).getId()!=parent.getId()) {
			out.print("<script>alert('userName用户名已存在');window.location='/test5/parentUpdateSelfInformation.action'</script>");
			out.flush();
			out.close();
		}else {
			if(student==null){
				out.print("<script>alert('学生的IDCard不存在');window.location='/test5/parentUpdateSelfInformation.action'</script>");
				out.flush();
				out.close();
			}else {
				parent.setStudent_id(student.getId());
				session.removeAttribute("userinfor");
				parentService.updateParentInformation(parent);
				Parent parent2 = parentService.queryParentById(parent.getId());
				session.setAttribute("userinfor", parent2);
				out.print("<script>alert('修改成功');window.location='/test5/parentUpdateSelfInformation.action'</script>");
				out.flush();
				out.close();
			}
			
		
		}
		
	}
	/**
	 * 跳转parentQueryStudentHomeworkDetail页面
	 * */
	@RequestMapping("/parentQueryStudentHomeworkDetail.action")
	public String studentQueryHomeworkDetail(int id,HttpServletResponse response,HttpSession session,HttpServletRequest request){
		TeacherCommodityHomework teacherCommodityHomework = teacherCommodityHomeworkService.queryTeacherCommodityHomeworkById(id);
		request.setAttribute("teacherCommodityHomework", teacherCommodityHomework);
		Parent parent = (Parent)session.getAttribute("userinfor");
		Student student = parent.getChild();
		StudentWithHomework studentWithHomework = studentWithHomeworkService.queryStudentWithHomeworkByStudentIdAndH_ID(student.getId(), teacherCommodityHomework.getH_ID());
		request.setAttribute("studentWithHomework", studentWithHomework);
		return "/admin/parentQueryStudentHomeworkDetail";
		
	}
	/**
	 * 家长查询学生作业界面
	 * */
	@RequestMapping("/parentQueryStudentHomework.action")
	public String parentQueryStudentHomework(int commodity_id,int teacher_id,HttpServletResponse response,HttpSession session,HttpServletRequest request){
		ArrayList<TeacherCommodityHomework> teacherCommodityHomeworkList=teacherCommodityHomeworkService.queryHomeworkByTeacherIdAndCommodityId(teacher_id, commodity_id);
		request.setAttribute("teacherCommodityHomeworkList", teacherCommodityHomeworkList);
		return "/admin/parentQueryStudentHomework";
		
	}
	/**
	 * 删除家长
	 * */
	@RequestMapping("/deleteParentById.action")
	public void deleteParentrById(int id,HttpServletResponse response){
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(parentService.queryParentById(id)==null){
			out.print("<script>alert('用户不存在');window.location='/test5/parentInformation.action'</script>");
			out.flush();
			out.close();
		}else {
			
			
			parentService.deleteParentById(id);
			out.print("<script>alert('删除成功');window.location='/test5/parentInformation.action'</script>");
			out.flush();
			out.close();
		}
	}
	/**
	 * 跳转孩子成绩信息页面
	 * */
	@RequestMapping("/parentQueryStudentGradeInformation.action")
	public String parentQueryStudentGradeInformation(HttpServletResponse response,HttpSession session){
		
		return "/admin/parentQueryStudentGradeInformation";
		
	}
	/**
	 * 跳转孩子成绩信息页面
	 * */
	@RequestMapping("/parentQueryTeacherInformation.action")
	public String parentQueryTeacherInformation(HttpServletResponse response,HttpSession session){
		
		return "/admin/parentQueryTeacherInformation";
		
	}
	/**
	 * 跳转修改家长信息页面
	 * */
	@RequestMapping("/parentUpdateSelfInformation.action")
	public String parentUpdateSelfInformation(HttpServletResponse response){
		return "/admin/parentUpdateSelfInformation";
		
	}
	/**
	 * 跳转修改家长页面首页
	 * */
	@RequestMapping("/parentIndex.action")
	public String parentIndex(HttpServletResponse response){
		return "/admin/parentIndex";
		
	}
}
