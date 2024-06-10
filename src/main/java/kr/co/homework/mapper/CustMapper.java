package kr.co.homework.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.co.homework.dto.CustDto;

@Mapper
public interface CustMapper {

	void newCustConfirm(@Param("custDto")CustDto custDto);

}
