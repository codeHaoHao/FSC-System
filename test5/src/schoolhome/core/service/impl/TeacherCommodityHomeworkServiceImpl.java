package schoolhome.core.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import schoolhome.core.dao.TeacherCommodityHomeworkDao;
import schoolhome.core.po.Homework;
import schoolhome.core.po.Teacher;
import schoolhome.core.po.TeacherCommodityHomework;
import schoolhome.core.service.TeacherCommodityHomeworkService;

@Service("TeacherCommodityHomeworkService")
public class TeacherCommodityHomeworkServiceImpl implements TeacherCommodityHomeworkService{
	
	@Autowired
	private TeacherCommodityHomeworkDao teacherCommodityHomeworkDao;
	@Override
	public ArrayList<TeacherCommodityHomework> queryHomeworkByTeacherIdAndCommodityId(int teacher_id, int commodity_id) {
		// TODO Auto-generated method stub
		return teacherCommodityHomeworkDao.queryHomeworkByTeacherIdAndCommodityId(teacher_id, commodity_id);
	}

	@Override
	public TeacherCommodityHomework queryTeacherCommodityHomeworkById(int id) {
		// TODO Auto-generated method stub
		return teacherCommodityHomeworkDao.queryTeacherCommodityHomeworkById(id);
	}

	@Override
	public int deleteTeacherCommodityHomeworkByTeacherId(int id) {
		// TODO Auto-generated method stub
		return teacherCommodityHomeworkDao.deleteTeacherCommodityHomeworkByTeacherId(id);
	}

	@Override
	public int deleteTeacherCommodityHomeworkByCommodityId(int id) {
		// TODO Auto-generated method stub
		return teacherCommodityHomeworkDao.deleteTeacherCommodityHomeworkByCommodityId(id);
	}

	@Override
	public int deleteTeacherCommodityHomeworkByH_ID(int id) {
		// TODO Auto-generated method stub
		return teacherCommodityHomeworkDao.deleteTeacherCommodityHomeworkByH_ID(id);
	}

	@Override
	public int deleteTeacherCommodityHomeworkById(int id) {
		// TODO Auto-generated method stub
		return teacherCommodityHomeworkDao.deleteTeacherCommodityHomeworkById(id);
	}

	@Override
	public int addTeacherCommodityHomework(TeacherCommodityHomework teacherCommodityHomework) {
		// TODO Auto-generated method stub
		return teacherCommodityHomeworkDao.addTeacherCommodityHomework(teacherCommodityHomework);
	}

	@Override
	public ArrayList<TeacherCommodityHomework> queryAll() {
		// TODO Auto-generated method stub
		return teacherCommodityHomeworkDao.queryAll();
	}

	@Override
	public ArrayList<TeacherCommodityHomework> queryAllOrderPage(int begin, int size) {
		// TODO Auto-generated method stub
		return teacherCommodityHomeworkDao.queryAllOrderPage(begin, size);
	}

	@Override
	public int queryCountOfRows() {
		// TODO Auto-generated method stub
		return teacherCommodityHomeworkDao.queryCountOfRows();
	}

	@Override
	public int updateTeacherCommodityHomeworkInformation(TeacherCommodityHomework teacherCommodityHomework) {
		// TODO Auto-generated method stub
		return teacherCommodityHomeworkDao.updateTeacherCommodityHomeworkInformation(teacherCommodityHomework);
	}

}
