package schoolhome.core.service;

import java.util.ArrayList;

import schoolhome.core.po.Category;

public interface CategoryService {
	public Category selectCategoryByCategoryName(String categoryName);
	public Category queryCategoryById(int id);
	public int addCategory(Category category);
	public ArrayList<Category> queryAll();
	public ArrayList<Category> queryAllOrderPage(int begin,int size);
	public int queryCountOfRows();
	public int updateCategoryInformation(Category category);
	public int deleteCategoryById(int id);
}
