package schoolhome.core.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import schoolhome.core.dao.ParentDao;
import schoolhome.core.po.Parent;
import schoolhome.core.service.ParentService;
@Service("ParentService")
public class ParentServiceImpl implements ParentService{
	@Autowired
	private ParentDao parentDao;
	@Override
	public Parent selectParentByParentName(String parentName) {
		// TODO Auto-generated method stub
		return parentDao.selectParentByParentName(parentName);
	}

	@Override
	public Parent queryParentById(int id) {
		// TODO Auto-generated method stub
		return parentDao.queryParentById(id);
	}

	@Override
	public int addParent(Parent parent) {
		// TODO Auto-generated method stub
		return parentDao.addParent(parent);
	}

	@Override
	public ArrayList<Parent> queryAll() {
		// TODO Auto-generated method stub
		return parentDao.queryAll();
	}

	@Override
	public ArrayList<Parent> queryAllOrderPage(int begin, int size) {
		// TODO Auto-generated method stub
		return parentDao.queryAllOrderPage(begin, size);
	}

	@Override
	public int queryCountOfRows() {
		// TODO Auto-generated method stub
		return parentDao.queryCountOfRows();
	}

	@Override
	public int updateParentInformation(Parent parent) {
		// TODO Auto-generated method stub
		return parentDao.updateParentInformation(parent);
	}

	@Override
	public int deleteParentById(int id) {
		// TODO Auto-generated method stub
		return parentDao.deleteParentById(id);
	}

	@Override
	public Parent selectParentByParentUserName(String userName) {
		// TODO Auto-generated method stub
		return parentDao.selectParentByParentUserName(userName);
	}

}
