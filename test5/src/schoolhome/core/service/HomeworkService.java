package schoolhome.core.service;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import schoolhome.core.po.Homework;

public interface HomeworkService {
	public Homework queryHomeworkById(int H_ID);
	public Homework queryHomeworkByH_nameAndH_content(String H_name,String H_content);
	public int addHomework(Homework homework);
	public ArrayList<Homework> queryAll();
	public ArrayList<Homework> queryAllOrderPage(int begin,int size);
	public int queryCountOfRows();
	public int updateHomeworkInformation(Homework homework);
	public int deleteHomeworkById(int H_ID);
}
