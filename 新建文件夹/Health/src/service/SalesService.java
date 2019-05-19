package service;

import java.util.List;

import entity.Sales;

public interface SalesService {
	public List<Sales> getAll();
	public Sales getById(int id);
}
