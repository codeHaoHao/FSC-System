package schoolhome.core.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import schoolhome.core.po.Teacher;

public interface TeacherDao {
	public Teacher selectTeacherByTeacherName(@Param("teacherName") String teacherName);
	public Teacher selectTeacherByTeacherUserName(@Param("userName") String userrName);
	public Teacher queryTeacherById(@Param("id")int id);
	public int addTeacher(Teacher teacher);
	public ArrayList<Teacher> queryAll();
	public ArrayList<Teacher> queryAllOrderPage(@Param("begin")int begin,@Param("size")int size);
	public int queryCountOfRows();
	public int updateTeacherInformation(Teacher teacher);
	public int deleteTeacherById(@Param("id")int id);
}
