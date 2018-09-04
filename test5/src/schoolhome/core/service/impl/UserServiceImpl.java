package schoolhome.core.service.impl;




import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import schoolhome.core.dao.UserDao;
import schoolhome.core.po.User;
import schoolhome.core.service.UserService;

/**
 * 用户Service接口实现类
 * 
 * */
@Service("userService")
public class UserServiceImpl implements UserService{
	//注入UserDao
	@Autowired
	private UserDao userDao;
	
	//通过用户名查询用户
	@Override
	public User selectUserByUserName(String userName) {
		// TODO Auto-generated method stub
		User user = this.userDao.selectUserByUserName(userName);
		
		return user;
	}

	@Override
	public int addUser(User user) {
		// TODO Auto-generated method stub
		return userDao.addUser(user);
	}

	@Override
	public ArrayList<User> queryAll() {
		// TODO Auto-generated method stub
		return userDao.queryAll();
	}

	@Override
	public ArrayList<User> queryAllOrderPage(int begin, int size) {
		// TODO Auto-generated method stub
		return userDao.queryAllOrderPage(begin, size);
	}

	@Override
	public int queryCountOfRows() {
		// TODO Auto-generated method stub
		return userDao.queryCountOfRows();
	}

	@Override
	public int updateUserInformation(User user) {
		// TODO Auto-generated method stub
		return userDao.updateUserInformation(user);
	}

	@Override
	public int deleteUserById(int id) {
		// TODO Auto-generated method stub
		return userDao.deleteUserById(id);
	}

	@Override
	public User queryUserById(int id) {
		// TODO Auto-generated method stub
		return userDao.queryUserById(id);
	}

}
