package schoolhome.core.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import schoolhome.core.po.StudentWithHomework;
import schoolhome.core.po.Student;
import schoolhome.core.po.StudentWithHomework;

public interface StudentWithHomeworkDao {
		
		public ArrayList<StudentWithHomework> queryStudentWithHomeworkByH_ID(@Param("H_ID")int H_ID);
		//通过student_id和H_ID查询
		public StudentWithHomework queryStudentWithHomeworkByStudentIdAndH_ID(@Param("student_id")int student_id,@Param("H_ID")int H_ID);
	//通过student_id查询学生的Homework信息
		public StudentWithHomework queryStudentWithHomeworkByStudentId(@Param("student_id")int student_id);
		//通过id查找数据
		public StudentWithHomework  queryStudentWithHomeworkById(@Param("id")int id);
		//删除学生时也需要删除学生的作业信息
		public int deleteStudentWithHomeworkByStudentId(@Param("student_id")int student_id);
		//删除作业时也需要删除学生的这个作业的信息
		public int deleteStudentWithHomeworkByH_ID(@Param("H_ID")int H_ID);
		//通过id删除一条学生作业信息
		public int deleteStudentWithHomeworkById(@Param("id")int id);
		//添加学生与作业联系
		public int addStudentWithHomework(StudentWithHomework studentWithHomework);
		//查询所有学生与作业的联系
		public ArrayList<StudentWithHomework> queryAll();
		//分页查询
		public ArrayList<StudentWithHomework> queryAllOrderPage(@Param("begin")int begin,@Param("size")int size);
		//返回数据行数
		public int queryCountOfRows();
		//更新一条信息
		public int updateStudentWithHomeworkInformation(StudentWithHomework studentWithHomework);
}
