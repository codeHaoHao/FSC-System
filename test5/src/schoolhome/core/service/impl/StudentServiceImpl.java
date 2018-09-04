package schoolhome.core.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import schoolhome.core.dao.StudentDao;
import schoolhome.core.po.Student;
import schoolhome.core.service.StudentService;

@Service("StudentService")
public class StudentServiceImpl implements StudentService{
	@Autowired
	private StudentDao studentDao;
	@Override
	public Student selectStudentByStudentName(String StudentName) {
		// TODO Auto-generated method stub
		return studentDao.selectStudentByStudentName(StudentName);
	}

	@Override
	public Student queryStudentById(int id) {
		// TODO Auto-generated method stub
		return studentDao.queryStudentById(id);
	}

	@Override
	public int addStudent(Student Student) {
		// TODO Auto-generated method stub
		return studentDao.addStudent(Student);
	}

	@Override
	public ArrayList<Student> queryAll() {
		// TODO Auto-generated method stub
		return studentDao.queryAll();
	}

	@Override
	public ArrayList<Student> queryAllOrderPage(int begin, int size) {
		// TODO Auto-generated method stub
		return studentDao.queryAllOrderPage(begin, size);
	}

	@Override
	public int queryCountOfRows() {
		// TODO Auto-generated method stub
		return studentDao.queryCountOfRows();
	}

	@Override
	public int updateStudentInformation(Student Student) {
		// TODO Auto-generated method stub
		return studentDao.updateStudentInformation(Student);
	}

	@Override
	public int deleteStudentById(int id) {
		// TODO Auto-generated method stub
		return studentDao.deleteStudentById(id);
	}

	@Override
	public Student selectStudentByStudentIdCard(String idCard) {
		// TODO Auto-generated method stub
		return studentDao.selectStudentByStudentIdCard(idCard);
	}

}
