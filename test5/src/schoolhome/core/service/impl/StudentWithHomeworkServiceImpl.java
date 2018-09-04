package schoolhome.core.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import schoolhome.core.dao.StudentWithHomeworkDao;
import schoolhome.core.po.Student;
import schoolhome.core.po.StudentWithHomework;
import schoolhome.core.service.StudentWithHomeworkService;

@Service("StudentWithHomeworkService")
public class StudentWithHomeworkServiceImpl implements StudentWithHomeworkService{

	@Autowired
	private StudentWithHomeworkDao studentWithHomeworkDao;
	@Override
	public StudentWithHomework queryStudentWithHomeworkByStudentId(int student_id) {
		// TODO Auto-generated method stub
		return studentWithHomeworkDao.queryStudentWithHomeworkByStudentId(student_id);
	}

	@Override
	public StudentWithHomework queryStudentWithHomeworkById(int id) {
		// TODO Auto-generated method stub
		return studentWithHomeworkDao.queryStudentWithHomeworkById(id);
	}

	@Override
	public int deleteStudentWithHomeworkByStudentId(int student_id) {
		// TODO Auto-generated method stub
		return studentWithHomeworkDao.deleteStudentWithHomeworkByStudentId(student_id);
	}

	@Override
	public int deleteStudentWithHomeworkByH_ID(int H_ID) {
		// TODO Auto-generated method stub
		return studentWithHomeworkDao.deleteStudentWithHomeworkByH_ID(H_ID);
	}

	@Override
	public int deleteStudentWithHomeworkById(int id) {
		// TODO Auto-generated method stub
		return studentWithHomeworkDao.deleteStudentWithHomeworkById(id);
	}

	@Override
	public int addStudentWithHomework(StudentWithHomework studentWithHomework) {
		// TODO Auto-generated method stub
		return studentWithHomeworkDao.addStudentWithHomework(studentWithHomework);
	}

	@Override
	public ArrayList<StudentWithHomework> queryAll() {
		// TODO Auto-generated method stub
		return studentWithHomeworkDao.queryAll();
	}

	@Override
	public ArrayList<StudentWithHomework> queryAllOrderPage(int begin, int size) {
		// TODO Auto-generated method stub
		return studentWithHomeworkDao.queryAllOrderPage(begin, size);
	}

	@Override
	public int queryCountOfRows() {
		// TODO Auto-generated method stub
		return studentWithHomeworkDao.queryCountOfRows();
	}

	@Override
	public int updateStudentWithHomeworkInformation(StudentWithHomework studentWithHomework) {
		// TODO Auto-generated method stub
		return studentWithHomeworkDao.updateStudentWithHomeworkInformation(studentWithHomework);
	}

	@Override
	public StudentWithHomework queryStudentWithHomeworkByStudentIdAndH_ID(int student_id, int H_ID) {
		// TODO Auto-generated method stub
		return studentWithHomeworkDao.queryStudentWithHomeworkByStudentIdAndH_ID(student_id, H_ID);
	}

	@Override
	public ArrayList<StudentWithHomework> queryStudentWithHomeworkByH_ID(int H_ID) {
		// TODO Auto-generated method stub
		return studentWithHomeworkDao.queryStudentWithHomeworkByH_ID(H_ID);
	}

}
