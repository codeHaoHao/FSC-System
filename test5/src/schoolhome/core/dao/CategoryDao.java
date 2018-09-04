package schoolhome.core.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import schoolhome.core.po.Category;

public interface CategoryDao {
	public Category selectCategoryByCategoryName(@Param("categoryName") String categoryName);
	public Category queryCategoryById(@Param("id")int id);
	public int addCategory(Category category);
	public ArrayList<Category> queryAll();
	public ArrayList<Category> queryAllOrderPage(@Param("begin")int begin,@Param("size")int size);
	public int queryCountOfRows();
	public int updateCategoryInformation(Category category);
	public int deleteCategoryById(@Param("id")int id);
}
