package schoolhome.core.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import schoolhome.core.po.Category;
import schoolhome.core.po.ClassBean;
import schoolhome.core.po.Commodity;
import schoolhome.core.po.Parent;
import schoolhome.core.po.Student;
import schoolhome.core.po.StudentWithHomework;
import schoolhome.core.po.Teacher;
import schoolhome.core.po.TeacherCommodityHomework;
import schoolhome.core.po.User;
import schoolhome.core.service.ClassBeanWithCommodityService;
import schoolhome.core.service.CommodityService;
import schoolhome.core.service.ParentService;
import schoolhome.core.service.StudentService;
import schoolhome.core.service.StudentWithHomeworkService;
import schoolhome.core.service.TeacherCommodityHomeworkService;
import schoolhome.core.service.TeacherService;
import schoolhome.core.service.UserService;
@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private ParentService parentService;
	@Autowired
	private StudentService studentService;
	@Autowired
	private TeacherService teacherService;
	@Autowired
	private ClassBeanWithCommodityService classBeanWithCommodityService;
	@Autowired
	private CommodityService commodityService;
	@Autowired
	private TeacherCommodityHomeworkService teacherCommodityHomeworkService;
	@Autowired
	private StudentWithHomeworkService studentWithHomeworkService;
	/**
	 * 用户登录
	 * */
	@RequestMapping(value="/login.action",method=RequestMethod.POST)
	public String login(String type,String userName,String password,HttpSession session,HttpServletResponse response){
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		switch (type) {
			case "admin":
				User user = userService.selectUserByUserName(userName);
				if(user!=null){
					if(user.getPassword().equals(password)){
						session.setAttribute("userinfor", user);
						if(user.getIsadmin()==1){
							return "/admin/adminindex";
						}
					}
					return "login";
				}else{
					return "login";
				}
			case "parent":
				Parent parent = parentService.selectParentByParentUserName(userName);
				if(parent!=null){
					if(parent.getPassword().equals(password)){
						for(Commodity commodity:parent.getChild().getClassBean().getCommodityList()){
							commodity.setClassBeanTeacher(classBeanWithCommodityService.queryTeacherByCommodityIdAndClassBeanId(commodity.getId(), parent.getChild().getClassNum()));
						}
						
						session.setAttribute("userinfor", parent);
						return "/admin/parentIndex";
					}else {
						return "login";
					}
				}else{
					return "login";
				}
			case "student":
				Student student = studentService.selectStudentByStudentIdCard(userName);
				if(student!=null){
					if(student.getPassword().equals(password)){
						session.setAttribute("userinfor", student);
						return "/admin/studentIndex";
					}
					return "login";
				}else{
					return "login";
				}
			case "teacher":
				Teacher teacher = teacherService.selectTeacherByTeacherUserName(userName);
				if(teacher!=null){
					if(teacher.getPassword().equals(password)){
						
						session.setAttribute("userinfor", teacher);
						
						return "/admin/teacherIndex";
					}
					return "login";
				}else{
					return "login";
				}
			default:
				return "login";
			}

		
	}
	/**
	 * 管理员首页跳转
	 */
	@RequestMapping(value="/adminindex.action")
	public String adminindex(){
		return "/admin/adminindex";
	}
	/**
	 * 添加用户
	 * */
	@RequestMapping(value="/addUser.action")
	public void addUser(Parent parent,String studentIdCard,HttpServletResponse response){
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (parentService.selectParentByParentUserName(parent.getUserName())!=null) {
			out.print("<script>alert('userName已存在');window.location='/test5/register.action'</script>");
			out.flush();
			out.close();
		}else {
			Student student =studentService.selectStudentByStudentIdCard(studentIdCard);
			if(student==null){
				out.print("<script>alert('学生IDCard不存在');window.location='/test5/register.action'</script>");
				out.flush();
				out.close();
			}else {
				parent.setStudent_id(student.getId());
				parentService.addParent(parent);
				out.print("<script>alert('注册成功');window.location='/test5/returnLogin.action'</script>");
				out.flush();
				out.close();
			}
		}
	}
	/**
	 * 管理员给学生批改成绩
	 * */
	@RequestMapping("/adminCheckStudentHomeworkGrade.action")
	public void adminCheckStudentHomeworkGrade(int id,int student_id,int H_ID,int S_H_id,double grade,HttpServletResponse response,HttpSession session,HttpServletRequest request){
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
			out.print("<script>alert('学生作业信息不存在');window.location='/test5/adminQueryStudentHomeworkDetail.action?id="+id+"'</script>");
			out.flush();
			out.close();
		}else {
			studentWithHomework.setGrade(grade);
			studentWithHomeworkService.updateStudentWithHomeworkInformation(studentWithHomework);
			
			out.print("<script>alert('成绩批改成功');window.location='/test5/adminQueryStudentHomeworkDetail.action?id="+id+"'</script>");
			out.flush();
			out.close();
		}
	}
	/**
	 * 跳转adminQueryStudentHomeworkDetail页面
	 * */
	@RequestMapping("/adminQueryStudentHomeworkDetail.action")
	public String adminQueryStudentHomeworkDetail(int id,HttpServletResponse response,HttpSession session,HttpServletRequest request){
		TeacherCommodityHomework teacherCommodityHomework = teacherCommodityHomeworkService.queryTeacherCommodityHomeworkById(id);
		request.setAttribute("teacherCommodityHomework", teacherCommodityHomework);
		Student student = (Student)session.getAttribute("studentHomework");
		System.out.println(teacherCommodityHomework.getH_ID());
		
		StudentWithHomework studentWithHomework = studentWithHomeworkService.queryStudentWithHomeworkByStudentIdAndH_ID(student.getId(), teacherCommodityHomework.getH_ID());
		request.setAttribute("studentWithHomework", studentWithHomework);
		return "/admin/adminQueryStudentHomeworkDetail";
		
	}
	/**
	 * 管理员查询作业界面
	 * */
	@RequestMapping("/adminQueryStudentHomeworkInformation.action")
	public String studentQueryHomework(int commodity_id,int teacher_id,HttpServletResponse response,HttpSession session,HttpServletRequest request){
		ArrayList<TeacherCommodityHomework> teacherCommodityHomeworkList=teacherCommodityHomeworkService.queryHomeworkByTeacherIdAndCommodityId(teacher_id, commodity_id);
		request.setAttribute("teacherCommodityHomeworkList", teacherCommodityHomeworkList);
		return "/admin/adminQueryStudentHomeworkInformation";
		
	}
	/**
	 * 管理员查看学生作业
	 * */
	@RequestMapping("/adminQueryStudentHomework.action")
	public String adminQueryStudentHomework(int id,HttpServletResponse response,HttpSession session){
		session.removeAttribute("studentHomework");
		Student student = studentService.queryStudentById(id);
		session.setAttribute("studentHomework", student);
		return "/admin/adminQueryStudentHomework";
		
	}
	/**
	 * 跳转注册页面
	 */
	@RequestMapping(value="/register.action")
	public String register(){
		return "/register";
	}
	/**
	 * 跳转登录页面
	 */
	@RequestMapping(value="/returnLogin.action")
	public String returnLogin(){
		return "/login";
	}
	/**
	 * 跳转首页
	 */
	@RequestMapping(value="/index.action")
	public String index(HttpSession session){
		
		ArrayList<Commodity> indexCommodityList = commodityService.queryAll();
		session.setAttribute("indexCommodityList", indexCommodityList);
		return "/index";
	}
	/**
	 * 跳转newsInformation界面
	 */
	@RequestMapping(value="/newsInformation.action")
	public String newsInformation(){
		return "/newsInformation";
	}
	/**
	 * 跳转news界面
	 */
	@RequestMapping(value="/news.action")
	public String news(){
		return "/news";
	}
	/**
	 * 跳转about-us界面
	 */
	@RequestMapping(value="/about-us.action")
	public String aboutUs(){
		return "/about-us";
	}
	/**
	 * 跳转commodity-detail界面
	 */
	@RequestMapping(value="/commodity-detail.action")
	public String commodityDetail(HttpSession session,HttpServletRequest request){
		session.removeAttribute("commodityDetail");
		int id = Integer.parseInt(request.getParameter("id"));
		Commodity commodity = commodityService.queryCommodityById(id);
		session.setAttribute("commodityDetail", commodity);
		return "/commodity-detail";
	}
	/**
	 * 跳转commodityList界面
	 */
	@RequestMapping(value="/commodityList.action")
	public String commodityList(HttpSession session,HttpServletRequest request){
		session.removeAttribute("page_count");
    	session.removeAttribute("commodityList");
    	session.removeAttribute("p");
    	
		int page_count;//总页数
  		int p;//当前页数
  		int size = 15;//每页记录数
  		int result_count  = commodityService.queryCountOfRows();//总记录数
  		int begin;//当前页第一条记录索引号
  		page_count = (result_count+size-1)/size;
  		
  		String page_s = request.getParameter("page");
  		if(page_s==null) page_s="1";
  		p=Integer.parseInt(page_s);
  		begin = (p-1)*size;
    	
  		ArrayList<Commodity> beans = commodityService.queryAllOrderPage(begin, size);
  		
		session.setAttribute("commodityList", beans);
		session.setAttribute("page_count", page_count);
		session.setAttribute("p", p);
		return "/commodityList";
	}
	/**
	 * 分页显示用户信息列表
	 * */
	@RequestMapping(value="/userInformation.action")
	public String queryAllOrderPage(Model model,HttpSession session,HttpServletRequest request){
		session.removeAttribute("page_count");
		session.removeAttribute("userList");
    	session.removeAttribute("p");
		int page_count;//总页数
  		int p;//当前页数
  		int size = 15;//每页记录数
  		int result_count  = userService.queryCountOfRows();//总记录数
  		int begin;//当前页第一条记录索引号
  		page_count = (result_count+size-1)/size;
  		
  		String page_s = request.getParameter("page");
  		if(page_s==null) page_s="1";
  		p=Integer.parseInt(page_s);
  		begin = (p-1)*size;
    	ArrayList<User> beans = userService.queryAllOrderPage(begin, size);
    	
		session.setAttribute("userList", beans);
		session.setAttribute("page_count", page_count);
		session.setAttribute("p", p);
		return "/admin/userInformation";
	}
	
	/**
	 * 修改用户信息
	 * */
	@RequestMapping("/userInformationUpdate.action")
	public void updateUserInformation(int userId,String userName,String password,String email,String phone,HttpServletResponse response){
		User user = new User(userId, userName, password, email, phone, null, 0);
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (userService.selectUserByUserName(userName)!=null && userService.selectUserByUserName(userName).getId()!=user.getId()) {
			out.print("<script>alert('userName已存在');window.location='/test5/userInformation.action'</script>");
			out.flush();
			out.close();
		}else {
			userService.updateUserInformation(user);
			out.print("<script>alert('修改成功');window.location='/test5/userInformation.action'</script>");
			out.flush();
			out.close();
		
		}
		
	}
	/**
	 * 删除用户
	 * */
	@RequestMapping("/deleteUserById.action")
	public void deleteUserById(int id,HttpServletResponse response){
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(userService.queryUserById(id)==null){
			out.print("<script>alert('用户不存在');window.location='/test5/userInformation.action'</script>");
			out.flush();
			out.close();
		}else {
			userService.deleteUserById(id);
			out.print("<script>alert('删除成功');window.location='/test5/userInformation.action'</script>");
			out.flush();
			out.close();
		}
	}
}
