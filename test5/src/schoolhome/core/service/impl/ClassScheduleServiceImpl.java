package schoolhome.core.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import schoolhome.core.dao.ClassScheduleDao;
import schoolhome.core.po.ClassSchedule;
import schoolhome.core.service.ClassScheduleService;
@Service("ClassScheduleService")
public class ClassScheduleServiceImpl implements ClassScheduleService{
	@Autowired
	private ClassScheduleDao classScheduleDao;
	@Override
	public ArrayList<ClassSchedule> queryClassScheduleByCCT_id(int CCT_id) {
		// TODO Auto-generated method stub
		return classScheduleDao.queryClassScheduleByCCT_id(CCT_id);
	}

	@Override
	public ClassSchedule queryClassScheduleById(int id) {
		// TODO Auto-generated method stub
		return classScheduleDao.queryClassScheduleById(id);
	}

	@Override
	public int addClassSchedule(ClassSchedule classSchedule) {
		// TODO Auto-generated method stub
		return classScheduleDao.addClassSchedule(classSchedule);
	}

	@Override
	public ArrayList<ClassSchedule> queryAll() {
		// TODO Auto-generated method stub
		return classScheduleDao.queryAll();
	}

	@Override
	public ArrayList<ClassSchedule> queryAllOrderPage(int begin, int size) {
		// TODO Auto-generated method stub
		return classScheduleDao.queryAllOrderPage(begin, size);
	}

	@Override
	public int queryCountOfRows() {
		// TODO Auto-generated method stub
		return classScheduleDao.queryCountOfRows();
	}

	@Override
	public int updateClassSchedule(ClassSchedule classSchedule) {
		// TODO Auto-generated method stub
		return classScheduleDao.updateClassSchedule(classSchedule);
	}

	@Override
	public int deleteClassScheduleById(int id) {
		// TODO Auto-generated method stub
		return classScheduleDao.deleteClassScheduleById(id);
	}

	@Override
	public ClassSchedule queryClassScheduleByCTT_idAndClassTimeClassLength(int CCT_id, int classTime, int classLength) {
		// TODO Auto-generated method stub
		return classScheduleDao.queryClassScheduleByCTT_idAndClassTimeClassLength(CCT_id, classTime, classLength);
	}

}
