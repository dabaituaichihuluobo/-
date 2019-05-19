package dao.sales;

import java.util.List;

import entity.Sales;

public interface SalesMapper {
	public List<Sales> getAll();

	public Sales getById(int id);
}
