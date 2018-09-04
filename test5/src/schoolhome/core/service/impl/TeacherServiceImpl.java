package schoolhome.core.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import schoolhome.core.dao.TeacherDao;
import schoolhome.core.po.Teacher;
import schoolhome.core.service.TeacherService;
@Service("TeacherService")
public class TeacherServiceImpl implements TeacherService{
	@Autowired
	private TeacherDao teacherDao;
	@Override
	public Teacher selectTeacherByTeacherName(String teacherName) {
		// TODO Auto-generated method stub
		return teacherDao.selectTeacherByTeacherName(teacherName);
	}

	@Override
	public Teacher selectTeacherByTeacherUserName(String userrName) {
		// TODO Auto-generated method stub
		return teacherDao.selectTeacherByTeacherUserName(userrName);
	}

	@Override
	public Teacher queryTeacherById(int id) {
		// TODO Auto-generated method stub
		return teacherDao.queryTeacherById(id);
	}

	@Override
	public int addTeacher(Teacher teacher) {
		// TODO Auto-generated method stub
		return teacherDao.addTeacher(teacher);
	}

	@Override
	public ArrayList<Teacher> queryAll() {
		// TODO Auto-generated method stub
		return teacherDao.queryAll();
	}

	@Override
	public ArrayList<Teacher> queryAllOrderPage(int begin, int size) {
		// TODO Auto-generated method stub
		return teacherDao.queryAllOrderPage(begin, size);
	}

	@Override
	public int queryCountOfRows() {
		// TODO Auto-generated method stub
		return teacherDao.queryCountOfRows();
	}

	@Override
	public int updateTeacherInformation(Teacher teacher) {
		// TODO Auto-generated method stub
		return teacherDao.updateTeacherInformation(teacher);
	}

	@Override
	public int deleteTeacherById(int id) {
		// TODO Auto-generated method stub
		return teacherDao.deleteTeacherById(id);
	}

}
