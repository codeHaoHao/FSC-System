package schoolhome.core.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import schoolhome.core.po.Homework;

public interface HomeworkDao {
	public Homework queryHomeworkById(@Param("H_ID")int H_ID);
	public Homework queryHomeworkByH_nameAndH_content(@Param("H_name")String H_name,@Param("H_content")String H_content);
	public int addHomework(Homework homework);
	public ArrayList<Homework> queryAll();
	public ArrayList<Homework> queryAllOrderPage(@Param("begin")int begin,@Param("size")int size);
	public int queryCountOfRows();
	public int updateHomeworkInformation(Homework homework);
	public int deleteHomeworkById(@Param("H_ID")int H_ID);
}
