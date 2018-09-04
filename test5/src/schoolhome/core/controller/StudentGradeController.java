package schoolhome.core.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import schoolhome.core.po.ClassBeanWithCommodity;
import schoolhome.core.po.StudentGrade;
import schoolhome.core.service.StudentGradeService;

@Controller
public class StudentGradeController {
	@Autowired
	private StudentGradeService studentGradeService;
	
	/**
	 * 查询student_commodity信息同时实现分页
	 * */
	@RequestMapping("/studentGradeInformation.action")
	public String queryAllOrderPage(HttpSession session,HttpServletRequest request){
		session.removeAttribute("page_count");
    	session.removeAttribute("studentGradeList");
    	session.removeAttribute("p");
		int page_count;//总页数
  		int p;//当前页数
  		int size = 15;//每页记录数
  		int result_count  = studentGradeService.queryCountOfRows();//总记录数
  		int begin;//当前页第一条记录索引号
  		page_count = (result_count+size-1)/size;
  		
  		String page_s = request.getParameter("page");
  		if(page_s==null) page_s="1";
  		p=Integer.parseInt(page_s);
  		begin = (p-1)*size;
  		ArrayList<StudentGrade> beans = studentGradeService.queryAllOrderPage(begin, size);
		session.setAttribute("studentGradeList", beans);
		session.setAttribute("page_count", page_count);
		session.setAttribute("p", p);
		return "/admin/studentGradeInformation";
	}
	/**
	 * 删除数据
	 * */
	@RequestMapping("/deleteStudentGradeById.action")
	public void deleteStudentGradeById(int id,HttpServletResponse response){
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out=null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(studentGradeService.queryStudentGradeById(id)==null){
			out.print("<script>alert('id不存在');window.location='/test5/studentGradeInformation.action'</script>");
			out.flush();
			out.close();
		}else {
			studentGradeService.deleteStudentGradeById(id);
			out.print("<script>alert('删除成功');window.location='/test5/studentGradeInformation.action'</script>");
			out.flush();
			out.close();
		}
	}
	/**
	 * 删除数据
	 * */
	@RequestMapping("/deleteStudentGradeByCommodityIdAndStudentId.action")
	public void deleteStudentGradeByCommodityIdAndStudentId(int student_id,int commodity_id,HttpServletResponse response){
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out=null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

			studentGradeService.deleteStudentGradeByCommodityIdAndStudentId(student_id, commodity_id);
			out.print("<script>alert('删除成功');window.location='/test5/studentInformationWithGrades.action?id="+student_id+"'</script>");
			out.flush();
			out.close();

	}
	/**
	 * 添加数据
	 * */
	@RequestMapping(value="/addStudentGrade.action")
	public void addStudentGrade(int student_id,int commodity_id,double grade,HttpServletResponse response){
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		StudentGrade studentGrade = new StudentGrade();
		studentGrade.setStudent_id(student_id);
		studentGrade.setCommodity_id(commodity_id);
		studentGrade.setGrade(grade);
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		if(studentGradeService.addStudentGrade(studentGrade)>0){
			out.print("<script>alert('添加成功');window.location='/test5/studentGradeInformation.action'</script>");
			out.flush();
			out.close();
		}else {
			out.print("<script>alert('添加失败');window.location='/test5/studentGradeInformation.action'</script>");
			out.flush();
			out.close();
		}
	}
	/**
	 * 在studentInformation界面跳转studentInformationWithGrades界面后修改学生成绩信息
	 * */
	@RequestMapping("/updateStudentGrades.action")
	public void updateStudentGrades(int studentId,int commodity_id,double grade,HttpServletResponse response){
		StudentGrade studentGrade = studentGradeService.queryStudentGradeByStudentIdAndCommodityId(studentId, commodity_id);
		studentGrade.setGrade(grade);
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(studentGradeService.updateStudentGradeInformation(studentGrade)>0){
			out.print("<script>alert('修改成功');window.location='/test5/studentInformationWithGrades.action?id="+studentId+"'</script>");
			out.flush();
			out.close();
		}else {
			out.print("<script>alert('修改失败');window.location='/test5/studentInformationWithGrades.action?id="+studentId+"'</script>");
			out.flush();
			out.close();
		}
		
	}
	/**
	 * 修改数据信息
	 * */
	@RequestMapping("/studentGradeInformationUpdate.action")
	public void updateStudentGradeInformation(int studentGradeId,int student_id,int commodity_id,double grade,HttpServletResponse response){
		StudentGrade studentGrade = new StudentGrade(studentGradeId, student_id, commodity_id, grade);
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(studentGradeService.updateStudentGradeInformation(studentGrade)>0){
			out.print("<script>alert('修改成功');window.location='/test5/studentGradeInformation.action'</script>");
			out.flush();
			out.close();
		}else {
			out.print("<script>alert('修改失败');window.location='/test5/studentGradeInformation.action'</script>");
			out.flush();
			out.close();
		}
		
	}
}
