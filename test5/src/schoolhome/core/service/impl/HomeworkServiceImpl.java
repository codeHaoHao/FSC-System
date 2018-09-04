package schoolhome.core.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import schoolhome.core.dao.HomeworkDao;
import schoolhome.core.po.Homework;
import schoolhome.core.service.HomeworkService;

@Service("HomeworkService")
public class HomeworkServiceImpl implements HomeworkService{
	@Autowired
	private HomeworkDao homeworkDao;

	@Override
	public Homework queryHomeworkById(int H_ID) {
		// TODO Auto-generated method stub
		return homeworkDao.queryHomeworkById(H_ID);
	}

	@Override
	public int addHomework(Homework homework) {
		// TODO Auto-generated method stub
		return homeworkDao.addHomework(homework);
	}

	@Override
	public ArrayList<Homework> queryAll() {
		// TODO Auto-generated method stub
		return homeworkDao.queryAll();
	}

	@Override
	public ArrayList<Homework> queryAllOrderPage(int begin, int size) {
		// TODO Auto-generated method stub
		return homeworkDao.queryAllOrderPage(begin, size);
	}

	@Override
	public int queryCountOfRows() {
		// TODO Auto-generated method stub
		return homeworkDao.queryCountOfRows();
	}

	@Override
	public int updateHomeworkInformation(Homework homework) {
		// TODO Auto-generated method stub
		return homeworkDao.updateHomeworkInformation(homework);
	}

	@Override
	public int deleteHomeworkById(int H_ID) {
		// TODO Auto-generated method stub
		return homeworkDao.deleteHomeworkById(H_ID);
	}

	@Override
	public Homework queryHomeworkByH_nameAndH_content(String H_name, String H_content) {
		// TODO Auto-generated method stub
		return homeworkDao.queryHomeworkByH_nameAndH_content(H_name, H_content);
	}

}
