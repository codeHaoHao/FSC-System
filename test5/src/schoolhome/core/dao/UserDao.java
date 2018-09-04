package schoolhome.core.dao;



import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import schoolhome.core.po.User;

public interface UserDao {
	public User selectUserByUserName(@Param("userName") String userName);
	public User queryUserById(@Param("id")int id);
	public int addUser(User user);
	public ArrayList<User> queryAll();
	public ArrayList<User> queryAllOrderPage(@Param("begin")int begin,@Param("size")int size);
	public int queryCountOfRows();
	public int updateUserInformation(User user);
	public int deleteUserById(@Param("id")int id);
}
