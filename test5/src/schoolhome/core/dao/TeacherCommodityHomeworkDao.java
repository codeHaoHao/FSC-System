package schoolhome.core.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import schoolhome.core.po.TeacherCommodityHomework;
import schoolhome.core.po.Homework;
import schoolhome.core.po.Teacher;

public interface TeacherCommodityHomeworkDao {
		//通过commodity_id和teacher_id查找某老师某课程的作业
		public ArrayList<TeacherCommodityHomework> queryHomeworkByTeacherIdAndCommodityId(@Param("teacher_id")int teacher_id,@Param("commodity_id")int commodity_id);
		//通过id查找数据
		public TeacherCommodityHomework queryTeacherCommodityHomeworkById(@Param("id")int id);
		
		public int deleteTeacherCommodityHomeworkByTeacherId(@Param("id")int id);

		public int deleteTeacherCommodityHomeworkByCommodityId(@Param("id")int id);
		
		public int deleteTeacherCommodityHomeworkByH_ID(@Param("id")int id);
		//通过id删除一条关系
		public int deleteTeacherCommodityHomeworkById(@Param("id")int id);
		//添加联系
		public int addTeacherCommodityHomework(TeacherCommodityHomework teacherCommodityHomework);
		//查询所有关系
		public ArrayList<TeacherCommodityHomework> queryAll();
		//分页查询
		public ArrayList<TeacherCommodityHomework> queryAllOrderPage(@Param("begin")int begin,@Param("size")int size);
		//返回数据行数
		public int queryCountOfRows();
		//更新一条信息
		public int updateTeacherCommodityHomeworkInformation(TeacherCommodityHomework teacherCommodityHomework);
}
