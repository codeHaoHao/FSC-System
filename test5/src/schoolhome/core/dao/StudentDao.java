package schoolhome.core.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import schoolhome.core.po.Student;

public interface StudentDao {
	public Student selectStudentByStudentName(@Param("studentName") String StudentName);
	public Student queryStudentById(@Param("id")int id);
	public int addStudent(Student Student);
	public ArrayList<Student> queryAll();
	public ArrayList<Student> queryAllOrderPage(@Param("begin")int begin,@Param("size")int size);
	public int queryCountOfRows();
	public int updateStudentInformation(Student Student);
	public int deleteStudentById(@Param("id")int id);
	public Student selectStudentByStudentIdCard(@Param("idCard")String idCard);
}
