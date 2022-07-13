package edu.kh.ugloryA.customer.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.kh.ugloryA.customer.model.vo.Customer;

@Repository
public class CustomerDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private Logger logger = LoggerFactory.getLogger(CustomerDAO.class);

	/**
	 * ��ü �� ��� ��ȸ DAO
	 * @return customerList
	 */
	public List<Customer> selectAllCustomer() {
		return sqlSession.selectList("customerMapper.selectAllCustomer");
	}

	
	/**
	 * Ư�� ������ �����ϴ� �� ��� ��ȸ DAO
	 * @param key
	 * @param query
	 * @return customerList
	 */
	public List<Customer> searchCustomer(String key, String query) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("key", key);
		map.put("query", query);
		
		return sqlSession.selectList("customerMapper.selectAllCustomer", map);
	}
	
	
}
