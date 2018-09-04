package schoolhome.core.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import schoolhome.core.dao.ClassBeanDao;
import schoolhome.core.po.ClassBean;
import schoolhome.core.service.ClassBeanService;

@Service("ClassBeanService")
public class ClassBeanServiceImpl implements ClassBeanService{
	@Autowired
	private ClassBeanDao classBeanDao;
	@Override
	public ClassBean selectClassBeanByClassBeanName(int classBeanName) {
		// TODO Auto-generated method stub
		return classBeanDao.selectClassBeanByClassBeanName(classBeanName);
	}

	@Override
	public ClassBean queryClassBeanById(int id) {
		// TODO Auto-generated method stub
		return classBeanDao.queryClassBeanById(id);
	}

	@Override
	public int addClassBean(ClassBean ClassBean) {
		// TODO Auto-generated method stub
		return classBeanDao.addClassBean(ClassBean);
	}

	@Override
	public ArrayList<ClassBean> queryAll() {
		// TODO Auto-generated method stub
		return classBeanDao.queryAll();
	}

	@Override
	public ArrayList<ClassBean> queryAllOrderPage(int begin, int size) {
		// TODO Auto-generated method stub
		return classBeanDao.queryAllOrderPage(begin, size);
	}

	@Override
	public int queryCountOfRows() {
		// TODO Auto-generated method stub
		return classBeanDao.queryCountOfRows();
	}

	@Override
	public int updateClassBeanInformation(ClassBean classBean) {
		// TODO Auto-generated method stub
		return classBeanDao.updateClassBeanInformation(classBean);
	}

	@Override
	public int deleteClassBeanById(int id) {
		// TODO Auto-generated method stub
		return classBeanDao.deleteClassBeanById(id);
	}
	
}
