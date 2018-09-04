package schoolhome.core.service;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import schoolhome.core.po.Teacher;

public interface TeacherService {
	public Teacher selectTeacherByTeacherName(String teacherName);
	public Teacher selectTeacherByTeacherUserName( String userrName);
	public Teacher queryTeacherById(int id);
	public int addTeacher(Teacher teacher);
	public ArrayList<Teacher> queryAll();
	public ArrayList<Teacher> queryAllOrderPage(int begin,int size);
	public int queryCountOfRows();
	public int updateTeacherInformation(Teacher teacher);
	public int deleteTeacherById(int id);
}
