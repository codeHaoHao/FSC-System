package schoolhome.core.service;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import schoolhome.core.dao.ClassBeanWithCommodityDao;
import schoolhome.core.po.ClassBeanWithCommodity;
import schoolhome.core.po.Teacher;

public interface ClassBeanWithCommodityService {
	public ClassBeanWithCommodity queryClassBeanWithCommodityByAllId(int classbean_id,int teacher_id,int commodity_id);
	public Teacher queryTeacherByCommodityIdAndClassBeanId(int commodity_id,int classBean_id);
	public ClassBeanWithCommodity queryClassBeanWithCommodityById(int id);
	//删除班级时同时也需要把班级与课程多对多的关联关系删除，即删除表classBean_commodity中classBean_id 为 id的数据
		public int deleteClassBeanWithCommodityByClassBeanId(int id);
		public int deleteClassBeanWithCommodityByCommodityId(int id);
		//通过id删除一条班级的课程关系
		public int deleteClassBeanWithCommodityById(int id);
		//添加班级与课程的联系
		public int addClassBeanWithCommodity(ClassBeanWithCommodity classBeanWithCommodity);
		//查询所有课程与班级关系
		public ArrayList<ClassBeanWithCommodity> queryAll();
		//分页查询
		public ArrayList<ClassBeanWithCommodity> queryAllOrderPage(int begin,int size);
		//返回数据行数
		public int queryCountOfRows();
		
		public int updateClassBeanWithCommodityInformation(ClassBeanWithCommodity classBeanWithCommodity);
}
