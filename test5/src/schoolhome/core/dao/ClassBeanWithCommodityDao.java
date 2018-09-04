package schoolhome.core.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import schoolhome.core.po.ClassBeanWithCommodity;
import schoolhome.core.po.Teacher;

public interface ClassBeanWithCommodityDao {
	public ClassBeanWithCommodity queryClassBeanWithCommodityByAllId(@Param("classbean_id")int classbean_id,@Param("teacher_id")int teacher_id,@Param("commodity_id")int commodity_id);
	//通过commodity_id和classBean_id查找某班级某课程的老师
	public Teacher queryTeacherByCommodityIdAndClassBeanId(@Param("commodity_id")int commodity_id,@Param("classBean_id")int classBean_id);
	//通过id查找数据
	public ClassBeanWithCommodity queryClassBeanWithCommodityById(@Param("id")int id);
	//删除班级时同时也需要把班级与课程多对多的关联关系删除，即删除表classBean_commodity中classBean_id 为 id的数据
	public int deleteClassBeanWithCommodityByClassBeanId(@Param("id")int id);
	//删除课程的同时也需要删除有该课程的班级的该课程
	public int deleteClassBeanWithCommodityByCommodityId(@Param("id")int id);
	//通过id删除一条班级的课程关系
	public int deleteClassBeanWithCommodityById(@Param("id")int id);
	//添加班级与课程的联系
	public int addClassBeanWithCommodity(ClassBeanWithCommodity classBeanWithCommodity);
	//查询所有课程与班级关系
	public ArrayList<ClassBeanWithCommodity> queryAll();
	//分页查询
	public ArrayList<ClassBeanWithCommodity> queryAllOrderPage(@Param("begin")int begin,@Param("size")int size);
	//返回数据行数
	public int queryCountOfRows();
	//更新一条信息
	public int updateClassBeanWithCommodityInformation(ClassBeanWithCommodity classBeanWithCommodity);
}
