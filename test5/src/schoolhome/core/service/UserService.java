package schoolhome.core.service;

import java.util.ArrayList;

import schoolhome.core.po.User;

public interface UserService {
	//通过用户名查询用户
	public User selectUserByUserName(String userName);
	//通过id查找用户
	public User queryUserById(int id);
	//添加用户
	public int addUser(User user);
	//查询所有用户
	public ArrayList<User> queryAll();
	//根据begin，size来查询用户list，即进行分页处理
	public ArrayList<User> queryAllOrderPage(int begin,int size);
	//查询用户列表的行数
	public int queryCountOfRows();
	//更新用户信息
	public int updateUserInformation(User user);
	//删除用户
	public int deleteUserById(int id);
}
