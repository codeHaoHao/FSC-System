package schoolhome.core.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import schoolhome.core.po.Commodity;

public interface CommodityDao {
	public Commodity selectCommodityByCommodityName(@Param("commodityName") String commodityName);
	public Commodity queryCommodityById(@Param("id")int id);
	public int addCommodity(Commodity commodity);
	public ArrayList<Commodity> queryAll();
	public ArrayList<Commodity> queryAllOrderPage(@Param("begin")int begin,@Param("size")int size);
	public int queryCountOfRows();
	public int updateCommodityInformation(Commodity commodity);
	public int deleteCommodityById(@Param("id")int id);
}
