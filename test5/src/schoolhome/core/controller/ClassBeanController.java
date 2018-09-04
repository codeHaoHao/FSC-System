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

import schoolhome.core.po.ClassBean;
import schoolhome.core.po.Commodity;
import schoolhome.core.po.Student;
import schoolhome.core.service.ClassBeanService;
import schoolhome.core.service.ClassBeanWithCommodityService;
import schoolhome.core.service.CommodityService;

@Controller
public class ClassBeanController {
	@Autowired
	private ClassBeanService classBeanService;
	@Autowired
	private ClassBeanWithCommodityService classBeanWithCommodityService;
	/**
	 * 分页显示班级信息列表
	 * */
	@RequestMapping(value="/classBeanInformation.action")
	public String queryAllOrderPage(Model model,HttpSession session,HttpServletRequest request){
		session.removeAttribute("page_count");
		session.removeAttribute("classBeanList");
    	session.removeAttribute("p");
		int page_count;//总页数
  		int p;//当前页数
  		int size = 15;//每页记录数
  		int result_count  = classBeanService.queryCountOfRows();//总记录数
  		int begin;//当前页第一条记录索引号
  		page_count = (result_count+size-1)/size;
  		
  		String page_s = request.getParameter("page");
  		if(page_s==null) page_s="1";
  		p=Integer.parseInt(page_s);
  		begin = (p-1)*size;
    	ArrayList<ClassBean> beans = classBeanService.queryAllOrderPage(begin, size);
    	/**
    	 * for(ClassBean bean : beans){
    		for(Commodity commodityBean : bean.getCommodityList())
    		System.out.println(commodityBean.getCommodityName());
    	}
    	 */
    	
    	
		session.setAttribute("classBeanList", beans);
		session.setAttribute("page_count", page_count);
		session.setAttribute("p", p);
		return "/admin/classBeanInformation";
	}
	/**
	 * 删除班级
	 * */
	@RequestMapping("/deleteClassBeanById.action")
	public void deleteClassBeanById(int id,HttpServletResponse response){
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(classBeanService.queryClassBeanById(id)==null){
			out.print("<script>alert('班级不存在');window.location='/test5/classBeanInformation.action'</script>");
			out.flush();
			out.close();
		}else {
			//先删除该班级的课程关系，再删除该班级
			classBeanWithCommodityService.deleteClassBeanWithCommodityByClassBeanId(id);
			classBeanService.deleteClassBeanById(id);
			out.print("<script>alert('删除成功');window.location='/test5/classBeanInformation.action'</script>");
			out.flush();
			out.close();
		}
	}
	/**
	 * 添加班级
	 * */
	@RequestMapping(value="/addClassBean.action")
	public void addClassBean(int classBeanName,HttpServletResponse response){
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		ClassBean classBean = new ClassBean();
		classBean.setClassBeanName(classBeanName);
		System.out.println(classBean.getClassBeanName());
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if (classBeanService.selectClassBeanByClassBeanName(classBean.getClassBeanName())==null) {
			classBeanService.addClassBean(classBean);
			out.print("<script>alert('添加成功');window.location='/test5/classBeanInformation.action'</script>");
			out.flush();
			out.close();
		}else {
			out.print("<script>alert('ClassBeanName已存在');window.location='/test5/classBeanInformation.action'</script>");
			out.flush();
			out.close();
		}
	}
	/**
	 * 修改班级信息
	 * */
	@RequestMapping("/classBeanInformationUpdate.action")
	public void updateClassBeanInformation(int classBeanId,int classBeanName,HttpServletResponse response){
		ClassBean bean = new ClassBean(classBeanId, classBeanName);
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if (classBeanService.selectClassBeanByClassBeanName(classBeanName)!=null &&classBeanService.selectClassBeanByClassBeanName(classBeanName).getId()!=bean.getId()) {
			out.print("<script>alert('classBeanName已存在');window.location='/test5/classBeanInformation.action'</script>");
			out.flush();
			out.close();
		}else {
			classBeanService.updateClassBeanInformation(bean);
			out.print("<script>alert('修改成功');window.location='/test5/classBeanInformation.action'</script>");
			out.flush();
			out.close();
		
		}
		
	}
	/**
	 * 跳转课表页面
	 * */
	@RequestMapping(value="/adminQueryClassSchedule.action")
	public String adminQueryClassSchedule(HttpServletResponse response,HttpServletRequest request,HttpSession session){
		session.removeAttribute("classSchedule");
		int id = Integer.parseInt(request.getParameter("id"));
		ClassBean classBean = classBeanService.queryClassBeanById(id);
		session.setAttribute("classSchedule", classBean);
		
		return "/admin/adminQueryClassSchedule";
	}
}
