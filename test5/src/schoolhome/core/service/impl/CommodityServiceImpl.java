package schoolhome.core.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import schoolhome.core.dao.CommodityDao;
import schoolhome.core.po.Commodity;
import schoolhome.core.service.CommodityService;

@Service("CommodityService")
public class CommodityServiceImpl implements CommodityService{
	@Autowired
	private CommodityDao commodityDao;

	@Override
	public Commodity selectCommodityByCommodityName(String commodityName) {
		// TODO Auto-generated method stub
		return commodityDao.selectCommodityByCommodityName(commodityName);
	}

	@Override
	public Commodity queryCommodityById(int id) {
		// TODO Auto-generated method stub
		return commodityDao.queryCommodityById(id);
	}

	@Override
	public int addCommodity(Commodity commodity) {
		// TODO Auto-generated method stub
		return commodityDao.addCommodity(commodity);
	}

	@Override
	public ArrayList<Commodity> queryAll() {
		// TODO Auto-generated method stub
		return commodityDao.queryAll();
	}

	@Override
	public ArrayList<Commodity> queryAllOrderPage(int begin, int size) {
		// TODO Auto-generated method stub
		return commodityDao.queryAllOrderPage(begin, size);
	}

	@Override
	public int queryCountOfRows() {
		// TODO Auto-generated method stub
		return commodityDao.queryCountOfRows();
	}

	@Override
	public int updateCommodityInformation(Commodity commodity) {
		// TODO Auto-generated method stub
		return commodityDao.updateCommodityInformation(commodity);
	}

	@Override
	public int deleteCommodityById(int id) {
		// TODO Auto-generated method stub
		return commodityDao.deleteCommodityById(id);
	}

}
