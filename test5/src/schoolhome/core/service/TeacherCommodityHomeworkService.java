package schoolhome.core.service;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import schoolhome.core.po.Homework;
import schoolhome.core.po.Teacher;
import schoolhome.core.po.TeacherCommodityHomework;

public interface TeacherCommodityHomeworkService {
	//通过commodity_id和teacher_id查找某老师某课程的作业
			public ArrayList<TeacherCommodityHomework> queryHomeworkByTeacherIdAndCommodityId(int teacher_id,int commodity_id);
			//通过id查找数据
			public TeacherCommodityHomework queryTeacherCommodityHomeworkById(int id);
			
			public int deleteTeacherCommodityHomeworkByTeacherId(int id);

			public int deleteTeacherCommodityHomeworkByCommodityId(int id);
			
			public int deleteTeacherCommodityHomeworkByH_ID(int id);
			//通过id删除一条关系
			public int deleteTeacherCommodityHomeworkById(int id);
			//添加联系
			public int addTeacherCommodityHomework(TeacherCommodityHomework teacherCommodityHomework);
			//查询所有关系
			public ArrayList<TeacherCommodityHomework> queryAll();
			//分页查询
			public ArrayList<TeacherCommodityHomework> queryAllOrderPage(int begin,int size);
			//返回数据行数
			public int queryCountOfRows();
			//更新一条信息
			public int updateTeacherCommodityHomeworkInformation(TeacherCommodityHomework teacherCommodityHomework);
}
