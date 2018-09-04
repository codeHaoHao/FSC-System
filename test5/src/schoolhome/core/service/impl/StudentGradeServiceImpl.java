package schoolhome.core.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import schoolhome.core.dao.StudentGradeDao;
import schoolhome.core.po.StudentGrade;
import schoolhome.core.service.StudentGradeService;
@Service("StudentGradeService")
public class StudentGradeServiceImpl implements StudentGradeService{
	@Autowired
	private StudentGradeDao studentGradeDao;
	@Override
	public StudentGrade queryStudentGradeById(int id) {
		// TODO Auto-generated method stub
		return studentGradeDao.queryStudentGradeById(id);
	}

	@Override
	public StudentGrade queryStudentGradeByStudentId(int id) {
		// TODO Auto-generated method stub
		return studentGradeDao.queryStudentGradeByStudentId(id);
	}

	@Override
	public StudentGrade queryStudentGradeByCommodityId(int id) {
		// TODO Auto-generated method stub
		return studentGradeDao.queryStudentGradeByCommodityId(id);
	}

	@Override
	public int deleteStudentGradeByStudentId(int id) {
		// TODO Auto-generated method stub
		return studentGradeDao.deleteStudentGradeByStudentId(id);
	}

	@Override
	public int deleteStudentGradeByCommodityId(int id) {
		// TODO Auto-generated method stub
		return studentGradeDao.deleteStudentGradeByCommodityId(id);
	}

	@Override
	public int deleteStudentGradeById(int id) {
		// TODO Auto-generated method stub
		return studentGradeDao.deleteStudentGradeById(id);
	}

	@Override
	public int addStudentGrade(StudentGrade StudentGrade) {
		// TODO Auto-generated method stub
		return studentGradeDao.addStudentGrade(StudentGrade);
	}

	@Override
	public ArrayList<StudentGrade> queryAll() {
		// TODO Auto-generated method stub
		return studentGradeDao.queryAll();
	}

	@Override
	public ArrayList<StudentGrade> queryAllOrderPage(int begin, int size) {
		// TODO Auto-generated method stub
		return studentGradeDao.queryAllOrderPage(begin, size);
	}

	@Override
	public int queryCountOfRows() {
		// TODO Auto-generated method stub
		return studentGradeDao.queryCountOfRows();
	}

	@Override
	public int updateStudentGradeInformation(StudentGrade StudentGrade) {
		// TODO Auto-generated method stub
		return studentGradeDao.updateStudentGradeInformation(StudentGrade);
	}

	@Override
	public StudentGrade queryStudentGradeByStudentIdAndCommodityId(int student_id, int commodity_id) {
		// TODO Auto-generated method stub
		return studentGradeDao.queryStudentGradeByStudentIdAndCommodityId(student_id, commodity_id);
	}

	@Override
	public int deleteStudentGradeByCommodityIdAndStudentId(int student_id, int commodity_id) {
		// TODO Auto-generated method stub
		return studentGradeDao.deleteStudentGradeByCommodityIdAndStudentId(student_id, commodity_id);
	}

}
