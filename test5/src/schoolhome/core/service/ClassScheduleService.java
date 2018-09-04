package schoolhome.core.service;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import schoolhome.core.po.ClassSchedule;

public interface ClassScheduleService {
	public ClassSchedule queryClassScheduleByCTT_idAndClassTimeClassLength(int CCT_id,int classTime,int classLength);
	public ArrayList<ClassSchedule> queryClassScheduleByCCT_id(int CCT_id);
	public ClassSchedule queryClassScheduleById(int id);
	public int addClassSchedule(ClassSchedule classSchedule);
	public ArrayList<ClassSchedule> queryAll();
	public ArrayList<ClassSchedule> queryAllOrderPage(int begin,int size);
	public int queryCountOfRows();
	public int updateClassSchedule(ClassSchedule classSchedule);
	public int deleteClassScheduleById(int id);
}
