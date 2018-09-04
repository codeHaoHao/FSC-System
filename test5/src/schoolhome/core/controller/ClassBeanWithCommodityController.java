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
import schoolhome.core.po.ClassBeanWithCommodity;
import schoolhome.core.po.ClassSchedule;
import schoolhome.core.service.ClassBeanWithCommodityService;
import schoolhome.core.service.ClassScheduleService;

@Controller
public class ClassBeanWithCommodityController {
	@Autowired
	private ClassBeanWithCommodityService classBeanWithCommodityService;
	@Autowired
	private ClassScheduleService classScheduleService;
	
	/**
	 * 分页显示信息列表
	 * */
	@RequestMapping(value="/classBeanWithCommodityInformation.action")
	public String queryAllOrderPage(Model model,HttpSession session,HttpServletRequest request){
		session.removeAttribute("page_count");
		session.removeAttribute("classBeanWithCommodityList");
    	session.removeAttribute("p");
		int page_count;//总页数
  		int p;//当前页数
  		int size = 15;//每页记录数
  		int result_count  = classBeanWithCommodityService.queryCountOfRows();//总记录数
  		int begin;//当前页第一条记录索引号
  		page_count = (result_count+size-1)/size;
  		
  		String page_s = request.getParameter("page");
  		if(page_s==null) page_s="1";
  		p=Integer.parseInt(page_s);
  		begin = (p-1)*size;
    	ArrayList<ClassBeanWithCommodity> beans = classBeanWithCommodityService.queryAllOrderPage(begin, size);
    	/**
    	 * for(ClassBean bean : beans){
    		for(Commodity commodityBean : bean.getCommodityList())
    		System.out.println(commodityBean.getCommodityName());
    	}
    	 */
    	
    	
		session.setAttribute("classBeanWithCommodityList", beans);
		session.setAttribute("page_count", page_count);
		session.setAttribute("p", p);
		return "/admin/classBeanWithCommodityInformation";
	}
	/**
	 * 删除数据
	 * */
	@RequestMapping("/deleteClassBeanWithCommodityById.action")
	public void deleteClassBeanWithCommodityById(int id,HttpServletResponse response){
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out=null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(classBeanWithCommodityService.queryClassBeanWithCommodityById(id)==null){
			out.print("<script>alert('id不存在');window.location='/test5/classBeanWithCommodityInformation.action'</script>");
			out.flush();
			out.close();
		}else {
			
			classBeanWithCommodityService.deleteClassBeanWithCommodityById(id);
			out.print("<script>alert('删除成功');window.location='/test5/classBeanWithCommodityInformation.action'</script>");
			out.flush();
			out.close();
		}
	}
	/**
	 * 添加数据
	 * */
	@RequestMapping(value="/addClassBeanWithCommodity.action")
	public void addClassBean(int classBean_id,int commodity_id,int teacher_id,HttpServletResponse response){
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		ClassBeanWithCommodity classBeanWithCommodity = new ClassBeanWithCommodity();
		classBeanWithCommodity.setClassBean_id(classBean_id);
		classBeanWithCommodity.setCommodity_id(commodity_id);
		classBeanWithCommodity.setTeacher_id(teacher_id);
		
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		if(classBeanWithCommodityService.addClassBeanWithCommodity(classBeanWithCommodity)>0){
			out.print("<script>alert('添加成功');window.location='/test5/classBeanWithCommodityInformation.action'</script>");
			out.flush();
			out.close();
		}else {
			out.print("<script>alert('添加失败');window.location='/test5/classBeanWithCommodityInformation.action'</script>");
			out.flush();
			out.close();
		}
	}
	/**
	 * 修改数据信息
	 * */
	@RequestMapping("/classBeanWithCommodityInformationUpdate.action")
	public void updateClassBeanInformation(int classBeanWithCommodityId,int classBean_id,int commodity_id,int teacher_id,HttpServletResponse response){
		ClassBeanWithCommodity classBeanWithCommodity = new ClassBeanWithCommodity(classBeanWithCommodityId, classBean_id, commodity_id, teacher_id);
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(classBeanWithCommodityService.updateClassBeanWithCommodityInformation(classBeanWithCommodity)>0){
			out.print("<script>alert('修改成功');window.location='/test5/classBeanWithCommodityInformation.action'</script>");
			out.flush();
			out.close();
		}else {
			out.print("<script>alert('修改失败');window.location='/test5/classBeanWithCommodityInformation.action'</script>");
			out.flush();
			out.close();
		}
	}
	/**
	 * 跳转classScheduleInformation页面
	 * */
	@RequestMapping("/classScheduleInformation.action")
	public String classScheduleInformation(int id,HttpServletResponse response,HttpServletRequest request){
		
		request.setAttribute("classScheduleInformation", classBeanWithCommodityService.queryClassBeanWithCommodityById(id));
		return "/admin/classScheduleInformation";
	}
}
