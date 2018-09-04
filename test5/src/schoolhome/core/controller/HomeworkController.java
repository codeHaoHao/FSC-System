package schoolhome.core.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import schoolhome.core.po.Homework;
import schoolhome.core.po.Teacher;
import schoolhome.core.service.HomeworkService;

@Controller
public class HomeworkController {
	@Autowired
	private HomeworkService homeworkService;
	
	/**
	 * 跳转homeworkDetail页面
	 * */
	@RequestMapping("/homeworkDetail.action")
	public String teacherIndex(int id,HttpServletResponse response,HttpSession session,HttpServletRequest request){
		Homework homework = homeworkService.queryHomeworkById(id);
		request.setAttribute("homework", homework);
		return "/admin/homeworkDetail";
		
	}
	
}
