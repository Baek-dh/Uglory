package edu.kh.ugloryA.customer.model.service;

import java.util.List;

import edu.kh.ugloryA.customer.model.vo.Customer;

public interface CustomerService {

	/**
	 * ��ü �� ��� ��ȸ
	 * @return list
	 */
	List<Customer> selectAllCustomer();

}
