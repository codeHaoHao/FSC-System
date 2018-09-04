package schoolhome.core.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import schoolhome.core.po.ClassSchedule;

public interface ClassScheduleDao {
	public ClassSchedule queryClassScheduleByCTT_idAndClassTimeClassLength(@Param("CCT_id")int CCT_id,@Param("classTime")int classTime,@Param("classLength")int classLength);
	public ArrayList<ClassSchedule> queryClassScheduleByCCT_id(@Param("CCT_id")int CCT_id);
	public ClassSchedule queryClassScheduleById(@Param("id")int id);
	public int addClassSchedule(ClassSchedule classSchedule);
	public ArrayList<ClassSchedule> queryAll();
	public ArrayList<ClassSchedule> queryAllOrderPage(@Param("begin")int begin,@Param("size")int size);
	public int queryCountOfRows();
	public int updateClassSchedule(ClassSchedule classSchedule);
	public int deleteClassScheduleById(@Param("id")int id);
}
