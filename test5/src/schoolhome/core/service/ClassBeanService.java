package schoolhome.core.service;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import schoolhome.core.po.ClassBean;

public interface ClassBeanService {
	public ClassBean selectClassBeanByClassBeanName(int classBeanName);
	public ClassBean queryClassBeanById(int id);
	public int addClassBean(ClassBean ClassBean);
	public ArrayList<ClassBean> queryAll();
	public ArrayList<ClassBean> queryAllOrderPage(int begin,int size);
	public int queryCountOfRows();
	public int updateClassBeanInformation(ClassBean classBean);
	public int deleteClassBeanById(int id);
}
