package kr.co.homework.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.homework.dto.CustDto;
import kr.co.homework.mapper.CustMapper;

@Service
public class CustService {
	@Autowired
	CustMapper mapper;

	public void newCustConfirm(CustDto custDto) {
		mapper.newCustConfirm(custDto);
		
		
	}

}
