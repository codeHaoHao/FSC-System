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

import schoolhome.core.po.Category;
import schoolhome.core.service.CategoryService;

@Controller
public class CategoryController {
	@Autowired
	private CategoryService categoryService;
	/**
	 * 查询category信息同时实现分页
	 * */
	@RequestMapping("/categoryInformation.action")
	public String queryAllOrderPage(HttpSession session,HttpServletRequest request){
		session.removeAttribute("page_count");
    	session.removeAttribute("categoryList");
    	session.removeAttribute("p");
		int page_count;//总页数
  		int p;//当前页数
  		int size = 15;//每页记录数
  		int result_count  = categoryService.queryCountOfRows();//总记录数
  		int begin;//当前页第一条记录索引号
  		page_count = (result_count+size-1)/size;
  		
  		String page_s = request.getParameter("page");
  		if(page_s==null) page_s="1";
  		p=Integer.parseInt(page_s);
  		begin = (p-1)*size;
    	ArrayList<Category> beans = categoryService.queryAllOrderPage(begin, size);
		session.setAttribute("categoryList", beans);
		session.setAttribute("page_count", page_count);
		
		session.setAttribute("p", p);
		return "/admin/categoryInformation";
	}
	
	/**
	 * 添加category
	 * */
	@RequestMapping("/addCategory.action")
	public void addUser(Category category,HttpServletResponse response){
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (categoryService.selectCategoryByCategoryName(category.getCategoryName())==null) {
			categoryService.addCategory(category);
			out.print("<script>alert('添加成功');window.location='/test5/categoryInformation.action'</script>");
			out.flush();
			out.close();
		}else {
			out.print("<script>alert('category已存在');window.location='/test5/categoryInformation.action'</script>");
			out.flush();
			out.close();
		}
	}
	/**
	 * 修改category信息
	 * */
	@RequestMapping("/updateCategoryInformation.action")
	public void updateCategoryInformation(int categoryId,int sort,String categoryName,String description,HttpServletResponse response){
		Category category = new Category(categoryId, categoryName, description, sort);
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (categoryService.selectCategoryByCategoryName(categoryName)!=null && categoryService.selectCategoryByCategoryName(categoryName).getId()!=category.getId()) {
			out.print("<script>alert('categoryName已存在');window.location='/test5/categoryInformation.action'</script>");
			out.flush();
			out.close();
		}else {
			categoryService.updateCategoryInformation(category);
			out.print("<script>alert('修改成功');window.location='/test5/categoryInformation.action'</script>");
			out.flush();
			out.close();
		
		}
		
	}
	
	/**
	 * 删除category通过id
	 * */
	@RequestMapping("/deleteCategoryById.action")
	public void deleteCategoryById(int id,HttpServletResponse response){
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(categoryService.queryCategoryById(id)==null){
			out.print("<script>alert('category不存在');window.location='/test5/categoryInformation.action'</script>");
			out.flush();
			out.close();
		}else {
			categoryService.deleteCategoryById(id);
			out.print("<script>alert('删除成功');window.location='/test5/categoryInformation.action'</script>");
			out.flush();
			out.close();
		}
	}
}
