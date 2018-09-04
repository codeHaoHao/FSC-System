package schoolhome.core.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import schoolhome.core.po.Parent;

public interface ParentDao {
	public Parent selectParentByParentName(@Param("parentName") String parentName);
	public Parent selectParentByParentUserName(@Param("userName") String userName);
	public Parent queryParentById(@Param("id")int id);
	public int addParent(Parent parent);
	public ArrayList<Parent> queryAll();
	public ArrayList<Parent> queryAllOrderPage(@Param("begin")int begin,@Param("size")int size);
	public int queryCountOfRows();
	public int updateParentInformation(Parent parent);
	public int deleteParentById(@Param("id")int id);
	//public Parent selectParentByParentIdCard(@Param("idCard")String idCard);
}
