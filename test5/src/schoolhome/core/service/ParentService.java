package schoolhome.core.service;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import schoolhome.core.po.Parent;

public interface ParentService {
	public Parent selectParentByParentName(String parentName);
	public Parent selectParentByParentUserName(String userName);
	public Parent queryParentById(int id);
	public int addParent(Parent parent);
	public ArrayList<Parent> queryAll();
	public ArrayList<Parent> queryAllOrderPage(int begin,int size);
	public int queryCountOfRows();
	public int updateParentInformation(Parent parent);
	public int deleteParentById(int id);
}
