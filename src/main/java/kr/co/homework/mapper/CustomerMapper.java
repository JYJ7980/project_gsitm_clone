package kr.co.homework.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.co.homework.dto.CustDto;

@Mapper
public interface CustomerMapper {

	List<Map<String, Object>> search(@Param("keyword") String keyword);

	void deleteCustomer(@Param("cust_sn") Long cust_sn);

	void deleteCustomerConsultations(@Param("cust_sn") Long cust_sn);

	List<Map<String, Object>> getAllCustomers();

	Map<String, Object> getCustomerDetail(@Param("cust_sn") Long cust_sn);

	void updateCustomer(@Param("customerDto") CustDto customerDto);

	List<CustDto> searchPicName(@Param("new_pic_name") String new_pic_name);

	void updatePicInfo(@Param("customerDto") CustDto customerDto);



}
