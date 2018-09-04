package schoolhome.core.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import schoolhome.core.po.ClassBean;

public interface ClassBeanDao {
	public ClassBean selectClassBeanByClassBeanName(@Param("classBeanName") int classBeanName);
	public ClassBean queryClassBeanById(@Param("id")int id);
	public int addClassBean(ClassBean ClassBean);
	public ArrayList<ClassBean> queryAll();
	public ArrayList<ClassBean> queryAllOrderPage(@Param("begin")int begin,@Param("size")int size);
	public int queryCountOfRows();
	public int updateClassBeanInformation(ClassBean classBean);
	public int deleteClassBeanById(@Param("id")int id);
	
}
