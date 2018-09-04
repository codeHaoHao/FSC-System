package schoolhome.core.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import schoolhome.core.po.ClassSchedule;
import schoolhome.core.po.Student;
import schoolhome.core.service.ClassScheduleService;

@Controller
public class ClassScheduleController {
	@Autowired
	private ClassScheduleService classScheduleService;
	
	/**
	 * 添加信息
	 * */
	@RequestMapping(value="/addClassSchedule.action")
	public void addClassSchedule(ClassSchedule classSchedule,HttpServletResponse response){
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (classScheduleService.addClassSchedule(classSchedule)>0) {
			out.print("<script>alert('添加成功');window.location='/test5/classScheduleInformation.action?id="+classSchedule.getCCT_id()+"'</script>");
			out.flush();
			out.close();
		}else {
			out.print("<script>alert('添加失败');window.location='/test5/classScheduleInformation.action?id="+classSchedule.getCCT_id()+"'</script>");
			out.flush();
			out.close();
		}
	}
	/**
	 * 添加信息
	 * */
	@RequestMapping(value="/updateClassSchedule.action")
	public void updateClassSchedule(int classSchedule_id,int CCT_id,int classTime,int classLength,HttpServletResponse response){
		ClassSchedule classSchedule = new ClassSchedule(classSchedule_id, CCT_id, classTime, classLength);
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (classScheduleService.updateClassSchedule(classSchedule)>0) {
			out.print("<script>alert('更新成功');window.location='/test5/classScheduleInformation.action?id="+classSchedule.getCCT_id()+"'</script>");
			out.flush();
			out.close();
		}else {
			out.print("<script>alert('更新失败');window.location='/test5/classScheduleInformation.action?id="+classSchedule.getCCT_id()+"'</script>");
			out.flush();
			out.close();
		}
	}
	/**
	 * 删除信息
	 * */
	@RequestMapping(value="/deleteClassSchedule.action")
	public void deleteClassSchedule(int CCT_id,int id,HttpServletResponse response){
		
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (classScheduleService.deleteClassScheduleById(id)>0) {
			out.print("<script>alert('删除成功');window.location='/test5/classScheduleInformation.action?id="+CCT_id+"'</script>");
			out.flush();
			out.close();
		}else {
			out.print("<script>alert('删除失败');window.location='/test5/classScheduleInformation.action?id="+CCT_id+"'</script>");
			out.flush();
			out.close();
		}
	}
}
