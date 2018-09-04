package schoolhome.core.service;

import java.util.ArrayList;

import schoolhome.core.po.Commodity;

public interface CommodityService {
	public Commodity selectCommodityByCommodityName(String commodityName);
	public Commodity queryCommodityById(int id);
	public int addCommodity(Commodity commodity);
	public ArrayList<Commodity> queryAll();
	public ArrayList<Commodity> queryAllOrderPage(int begin,int size);
	public int queryCountOfRows();
	public int updateCommodityInformation(Commodity commodity);
	public int deleteCommodityById(int id);
}
