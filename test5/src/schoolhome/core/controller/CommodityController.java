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

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import schoolhome.core.po.Category;
import schoolhome.core.po.Commodity;
import schoolhome.core.service.CategoryService;
import schoolhome.core.service.ClassBeanWithCommodityService;
import schoolhome.core.service.CommodityService;

@Controller
public class CommodityController {
	@Autowired
	private CommodityService commodityService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private ClassBeanWithCommodityService classBeanWithCommodityService;
	
	private String dirPath = "C:/upload/image/";
	
	/**
	 * 查询commodity信息同时实现分页
	 * */
	@RequestMapping("/commodityInformation.action")
	public String queryAllOrderPage(HttpSession session,HttpServletRequest request){
		session.removeAttribute("page_count");
    	session.removeAttribute("commodityList");
    	session.removeAttribute("p");
    	session.removeAttribute("categoryList");
    	
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
    	ArrayList<Category> categoryList = categoryService.queryAll();
  		ArrayList<Commodity> beans = commodityService.queryAllOrderPage(begin, size);
  		
		session.setAttribute("commodityList", beans);
		session.setAttribute("page_count", page_count);
		session.setAttribute("categoryList", categoryList);
		session.setAttribute("p", p);
		return "/admin/commodityInformation";
	}
	/**
	 * 添加commodity
	 * */
	@RequestMapping("/addCommodity.action")
	public void addUser(@RequestParam("commodityName")String commodityName,@RequestParam("categoryName")String categoryName,@RequestParam("description")String description,@RequestParam("photo") MultipartFile uploadfile,HttpServletResponse response,HttpServletRequest request){
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		Timestamp createDate = new Timestamp(new java.util.Date(System.currentTimeMillis()).getTime());
		Commodity commodity = new Commodity(0, commodityName, categoryName, description,createDate, null);
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (commodityService.selectCommodityByCommodityName(commodity.getCommodityName())==null) {
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
				commodity.setPhoto("/uploadImages/"+newFilename);
			}
			commodityService.addCommodity(commodity);
			out.print("<script>alert('添加成功');window.location='/test5/commodityInformation.action'</script>");
			out.flush();
			out.close();
		}else {
			out.print("<script>alert('commodity已存在');window.location='/test5/commodityInformation.action'</script>");
			out.flush();
			out.close();
		}
	}
	/**
	 * 修改commodity图片
	 * */
	@RequestMapping("/updateImage.action")
	public void updateImage(@RequestParam("id") int id,@RequestParam("photo") MultipartFile uploadfile,HttpServletResponse response,HttpServletRequest request){
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		
		Commodity commodity = new Commodity();
		commodity.setId(id);
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (commodityService.selectCommodityByCommodityName(commodity.getCommodityName())==null) {
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
				commodity.setPhoto("/uploadImages/"+newFilename);
			}
			commodityService.updateCommodityInformation(commodity);
			out.print("<script>alert('图片修改成功');window.location='/test5/commodityInformation.action'</script>");
			out.flush();
			out.close();
		}else {
			out.print("<script>alert('图片修改失败');window.location='/test5/commodityInformation.action'</script>");
			out.flush();
			out.close();
		}
	}
	/**
	 * 修改commodity信息
	 * */
	@RequestMapping("/updateCommodityInformation.action")
	public void updateCommodityInformation(Commodity commodity,HttpServletResponse response,HttpServletRequest request){
		
		response.setHeader("content-type", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(commodityService.selectCommodityByCommodityName(commodity.getCommodityName())!=null&&commodityService.selectCommodityByCommodityName(commodity.getCommodityName()).getId()!=commodity.getId()){
			
			out.print("<script>alert('commodity已存在');window.location='/test5/commodityInformation.action'</script>");
			out.flush();
			out.close();
		}else {
			commodityService.updateCommodityInformation(commodity);
			out.print("<script>alert('更新成功');window.location='/test5/commodityInformation.action'</script>");
			out.flush();
			out.close();
		}
		
	}
	/**
	 * 删除commodity通过id
	 * */
	@RequestMapping("/deleteCommodityById.action")
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
		if(commodityService.queryCommodityById(id)==null){
			out.print("<script>alert('commodity不存在');window.location='/test5/commodityInformation.action'</script>");
			out.flush();
			out.close();
		}else {
			
			//删除课程前先删除所有班级中的该课程
			classBeanWithCommodityService.deleteClassBeanWithCommodityByCommodityId(id);
			commodityService.deleteCommodityById(id);
			out.print("<script>alert('删除成功');window.location='/test5/commodityInformation.action'</script>");
			out.flush();
			out.close();
		}
	}
}
