package schoolhome.core.service;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import schoolhome.core.po.StudentGrade;

public interface StudentGradeService {
	public StudentGrade queryStudentGradeByStudentIdAndCommodityId(int student_id,int commodity_id);
	//通过id查找数据
			public StudentGrade queryStudentGradeById(int id);
			//通过学生id查找该学生的相关成绩
			public StudentGrade queryStudentGradeByStudentId(int id);
			//通过课程的id查找该课程的所有学生信息
			public StudentGrade queryStudentGradeByCommodityId(int id);
			//删除学生时同时也需要把学生与课程成绩多对多的关联关系删除，即删除表student_commodity中student_id 为 id的数据
			public int deleteStudentGradeByStudentId(int id);
			//删除课程的同时也需要删除学生与该课程的关联关系，即删除表student_commodity中commodity_id 为id的数据
			public int deleteStudentGradeByCommodityId(int id);
			//通过id删除一条班级的课程关系
			public int deleteStudentGradeById(int id);
			public int deleteStudentGradeByCommodityIdAndStudentId(int student_id,int commodity_id);
			//添加班级与课程的联系
			public int addStudentGrade(StudentGrade StudentGrade);
			//查询所有课程与班级关系
			public ArrayList<StudentGrade> queryAll();
			//分页查询
			public ArrayList<StudentGrade> queryAllOrderPage(int begin,int size);
			//返回数据行数
			public int queryCountOfRows();
			//更新一条信息
			public int updateStudentGradeInformation(StudentGrade StudentGrade);
}
