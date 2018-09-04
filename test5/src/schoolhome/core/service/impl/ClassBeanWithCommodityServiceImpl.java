package schoolhome.core.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import schoolhome.core.dao.ClassBeanWithCommodityDao;
import schoolhome.core.po.ClassBeanWithCommodity;
import schoolhome.core.po.Teacher;
import schoolhome.core.service.ClassBeanWithCommodityService;
@Service("ClassBeanWithCommodityService")
public class ClassBeanWithCommodityServiceImpl implements ClassBeanWithCommodityService{
	@Autowired
	private ClassBeanWithCommodityDao classBeanWithCommodityDao;
	
	@Override
	public int deleteClassBeanWithCommodityByClassBeanId(int id) {
		// TODO Auto-generated method stub
		return classBeanWithCommodityDao.deleteClassBeanWithCommodityByClassBeanId(id);
	}

	@Override
	public int deleteClassBeanWithCommodityById(int id) {
		// TODO Auto-generated method stub
		return classBeanWithCommodityDao.deleteClassBeanWithCommodityById(id);
	}

	@Override
	public int addClassBeanWithCommodity(ClassBeanWithCommodity classBeanWithCommodity) {
		// TODO Auto-generated method stub
		return classBeanWithCommodityDao.addClassBeanWithCommodity(classBeanWithCommodity);
	}

	@Override
	public ArrayList<ClassBeanWithCommodity> queryAll() {
		// TODO Auto-generated method stub
		return classBeanWithCommodityDao.queryAll();
	}

	@Override
	public ArrayList<ClassBeanWithCommodity> queryAllOrderPage(int begin, int size) {
		// TODO Auto-generated method stub
		return classBeanWithCommodityDao.queryAllOrderPage(begin, size);
	}

	@Override
	public int queryCountOfRows() {
		// TODO Auto-generated method stub
		return classBeanWithCommodityDao.queryCountOfRows();
	}

	@Override
	public int updateClassBeanWithCommodityInformation(ClassBeanWithCommodity classBeanWithCommodity) {
		// TODO Auto-generated method stub
		return classBeanWithCommodityDao.updateClassBeanWithCommodityInformation(classBeanWithCommodity);
	}

	@Override
	public ClassBeanWithCommodity queryClassBeanWithCommodityById(int id) {
		// TODO Auto-generated method stub
		return classBeanWithCommodityDao.queryClassBeanWithCommodityById(id);
	}

	@Override
	public int deleteClassBeanWithCommodityByCommodityId(int id) {
		// TODO Auto-generated method stub
		return classBeanWithCommodityDao.deleteClassBeanWithCommodityByCommodityId(id);
	}

	@Override
	public Teacher queryTeacherByCommodityIdAndClassBeanId(int commodity_id, int classBean_id) {
		// TODO Auto-generated method stub
		return classBeanWithCommodityDao.queryTeacherByCommodityIdAndClassBeanId(commodity_id, classBean_id);
	}

	@Override
	public ClassBeanWithCommodity queryClassBeanWithCommodityByAllId(int classbean_id, int teacher_id,
			int commodity_id) {
		// TODO Auto-generated method stub
		return classBeanWithCommodityDao.queryClassBeanWithCommodityByAllId(classbean_id, teacher_id, commodity_id);
	}

}
