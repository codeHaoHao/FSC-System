package schoolhome.core.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import schoolhome.core.dao.CategoryDao;
import schoolhome.core.po.Category;
import schoolhome.core.service.CategoryService;

@Service("CategoryService")
public class CategoryServiceImpl implements CategoryService{
	//注入categoryDao
	@Autowired
	private CategoryDao categoryDao;
	@Override
	public Category selectCategoryByCategoryName(String categoryName) {
		// TODO Auto-generated method stub
		return categoryDao.selectCategoryByCategoryName(categoryName);
	}

	@Override
	public Category queryCategoryById(int id) {
		// TODO Auto-generated method stub
		return categoryDao.queryCategoryById(id);
	}

	@Override
	public int addCategory(Category category) {
		// TODO Auto-generated method stub
		return categoryDao.addCategory(category);
	}

	@Override
	public ArrayList<Category> queryAll() {
		// TODO Auto-generated method stub
		return categoryDao.queryAll();
	}

	@Override
	public ArrayList<Category> queryAllOrderPage(int begin, int size) {
		// TODO Auto-generated method stub
		return categoryDao.queryAllOrderPage(begin, size);
	}

	@Override
	public int queryCountOfRows() {
		// TODO Auto-generated method stub
		return categoryDao.queryCountOfRows();
	}

	@Override
	public int updateCategoryInformation(Category category) {
		// TODO Auto-generated method stub
		return categoryDao.updateCategoryInformation(category);
	}

	@Override
	public int deleteCategoryById(int id) {
		// TODO Auto-generated method stub
		return categoryDao.deleteCategoryById(id);
	}
	
}
