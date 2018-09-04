package schoolhome.core.service;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import schoolhome.core.po.Student;

public interface StudentService {
	public Student selectStudentByStudentName(String StudentName);
	public Student queryStudentById(int id);
	public int addStudent(Student Student);
	public ArrayList<Student> queryAll();
	public ArrayList<Student> queryAllOrderPage(int begin,int size);
	public int queryCountOfRows();
	public int updateStudentInformation(Student Student);
	public int deleteStudentById(int id);
	public Student selectStudentByStudentIdCard(String idCard);
}
